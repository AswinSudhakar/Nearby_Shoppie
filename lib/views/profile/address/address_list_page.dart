import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nearby_shoppiee/core/constants/string_constants.dart';
import 'package:nearby_shoppiee/core/widgets/elevated_button.dart';
import 'package:nearby_shoppiee/views/profile/address/location_picker.dart';

class AddressListPage extends StatefulWidget {
  const AddressListPage({super.key});

  @override
  _AddressListPageState createState() => _AddressListPageState();
}

class _AddressListPageState extends State<AddressListPage> {
  final List<TextEditingController> _controllers = [];
  final List<bool> _isEditing = [];

  Future<void> _addAddress() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FlutterMapPicker()),
    );

    if (result != null && result['address'] != null) {
      setState(() {
        final controller = TextEditingController(text: result['address']);
        _controllers.add(controller);
        _isEditing.add(false); // default readonly
      });
    }
  }

  void _removeAddress(int index) {
    setState(() {
      _controllers.removeAt(index);
      _isEditing.removeAt(index);
    });
  }

  void _toggleEdit(int index) {
    setState(() {
      _isEditing[index] = !_isEditing[index];
    });
  }

  @override
  void dispose() {
    for (var c in _controllers) {
      c.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Addresses"),
        centerTitle: true,
        elevation: 2,
      ),
      body: _controllers.isEmpty
          ? const Center(
              child: Text(
                "No addresses added yet.\nTap + to add one.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: _controllers.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _controllers[index],
                            readOnly: !_isEditing[index],
                            decoration: InputDecoration(
                              labelText: "Address ${index + 1}",
                              labelStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              border: InputBorder.none,
                            ),
                            maxLines: 3,
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Column(
                          children: [
                            IconButton(
                              icon: Icon(
                                _isEditing[index] ? Icons.check : Icons.edit,
                                color: _isEditing[index]
                                    ? Colors.green
                                    : Colors.blue,
                              ),
                              tooltip: _isEditing[index] ? "Save" : "Edit",
                              onPressed: () => _toggleEdit(index),
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete, color: Colors.red),
                              tooltip: "Delete",
                              onPressed: () => _removeAddress(index),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
      bottomNavigationBar: BottomAppBar(
        child: CustomElevatedButton(
          label: AppStrings.addnewaddress.tr,
          backgroundColor: Colors.greenAccent,
          onPressed: () {
            _addAddress();
          },
        ),
      ),
    );
  }
}
