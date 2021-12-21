import 'package:flutter/material.dart';
import 'package:foodhub/statemanagement_app/pages/navpages/bar_item_page.dart';
import 'package:foodhub/statemanagement_app/pages/home_page.dart';
import 'package:foodhub/statemanagement_app/pages/navpages/my_page.dart';
import 'package:foodhub/statemanagement_app/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [HomePage(), BarItem(), SearchPage(), MyPage()];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.bar_chart)),
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
