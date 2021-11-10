import 'package:flutter/material.dart';
import 'package:foodhub/food_hub/ui/cart_page.dart';
import 'package:foodhub/food_hub/ui/category_page.dart';
import 'package:foodhub/food_hub/ui/home_page.dart';
import 'package:foodhub/food_hub/ui/saved_page.dart';

class Homeepage extends StatefulWidget {
  const Homeepage({
    Key? key,
  }) : super(key: key);

  @override
  _HomeepageState createState() => _HomeepageState();
}

class _HomeepageState extends State<Homeepage> {
  int _selectedIndex = 0;
  static const List<Widget> pages = <Widget>[
    Home(),
    CateoryPage(),
    SavedPage(),
    CartPage(),
    SizedBox(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
