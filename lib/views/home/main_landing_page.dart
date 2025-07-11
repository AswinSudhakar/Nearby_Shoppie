import 'package:flutter/material.dart';
import 'package:nearby_shoppiee/views/bag/whishlist_page.dart';
import 'package:nearby_shoppiee/views/home/home_page.dart';
import 'package:nearby_shoppiee/views/home/more_page.dart';
import 'package:nearby_shoppiee/views/product/category/categories_page.dart';
import 'package:nearby_shoppiee/views/shop/shop_list_page.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final List<int> _history = [0];
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    CategoriesPage(),
    ShopListPage(),
    MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_history.length > 1) {
          setState(() {
            _history.removeLast();
            _currentIndex = _history.last;
          });
          return false;
        }
        return true;
      },
      child: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
              _history.add(index);
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_view_rounded),
              label: 'Categories',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Shops'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'More'),
          ],
        ),
      ),
    );
  }
}
