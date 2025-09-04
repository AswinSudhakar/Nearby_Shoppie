import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:osm_nominatim/osm_nominatim.dart';
import 'package:geolocator/geolocator.dart';

class FlutterMapPicker extends StatefulWidget {
  const FlutterMapPicker({super.key});

  @override
  _FlutterMapPickerState createState() => _FlutterMapPickerState();
}

class _FlutterMapPickerState extends State<FlutterMapPicker> {
  LatLng? _pickedLocation;
  String? _pickedAddress;
  LatLng? _currentLocation;

  final MapController _mapController = MapController();
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse) {
      final pos = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      setState(() {
        _currentLocation = LatLng(pos.latitude, pos.longitude);
      });
    }
  }

  Future<void> _getAddress(LatLng position) async {
    final nominatim = Nominatim(userAgent: "my_flutter_app");
    final result = await nominatim.reverseSearch(
      lat: position.latitude,
      lon: position.longitude,
      addressDetails: true,
    );

    setState(() {
      _pickedAddress = result.displayName;
    });
  }

  Future<void> _searchLocation(String query) async {
    if (query.isEmpty) return;

    final nominatim = Nominatim(userAgent: "my_flutter_app");
    final results = await nominatim.searchByName(
      query: query,
      limit: 1,
      addressDetails: true,
    );

    if (results.isNotEmpty) {
      final place = results.first;
      final latlng = LatLng(place.lat, place.lon);

      _mapController.move(latlng, 15);
      setState(() {
        _pickedLocation = latlng;
        _pickedAddress = place.displayName;
      });
    }
  }

  void _onTap(TapPosition tapPosition, LatLng latlng) async {
    setState(() {
      _pickedLocation = latlng;
      _pickedAddress = null;
    });
    await _getAddress(latlng);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pick Location")),
      body: _currentLocation == null
          ? Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                FlutterMap(
                  mapController: _mapController,
                  options: MapOptions(
                    initialCenter: _currentLocation!,
                    initialZoom: 15,
                    onTap: _onTap,
                  ),
                  children: [
                    TileLayer(
                      urlTemplate:
                          "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                      subdomains: ['a', 'b', 'c'],
                    ),
                    MarkerLayer(
                      markers: [
                        if (_pickedLocation != null)
                          Marker(
                            point: _pickedLocation!,
                            width: 40,
                            height: 40,
                            child: Icon(
                              Icons.location_pin,
                              color: Colors.red,
                              size: 40,
                            ),
                          )
                        else if (_currentLocation != null)
                          Marker(
                            point: _currentLocation!,
                            width: 40,
                            height: 40,
                            child: Icon(
                              Icons.my_location,
                              color: Colors.blue,
                              size: 32,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),

                // Search box
                Positioned(
                  top: 20,
                  left: 20,
                  right: 20,
                  child: Card(
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _searchController,
                            decoration: InputDecoration(
                              hintText: "Search location...",
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(12),
                            ),
                            onSubmitted: _searchLocation,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () =>
                              _searchLocation(_searchController.text),
                        ),
                      ],
                    ),
                  ),
                ),

                // Address display
                if (_pickedAddress != null)
                  Positioned(
                    bottom: 80,
                    left: 20,
                    right: 20,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          _pickedAddress!,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
      floatingActionButton: _pickedLocation != null
          ? FloatingActionButton.extended(
              icon: Icon(Icons.check),
              label: Text("Add Location"),
              onPressed: () {
                Navigator.pop(context, {
                  "location": _pickedLocation,
                  "address": _pickedAddress,
                });
              },
            )
          : null,
    );
  }
}
