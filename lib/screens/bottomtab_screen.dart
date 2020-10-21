import 'package:flutter/material.dart';
import '../screens/clubls_screen.dart';

class BottomTabsScreen extends StatefulWidget {
  static const routeName = '/tabs-screen';
  @override
  _BottomTabsScreenState createState() => _BottomTabsScreenState();
}

class _BottomTabsScreenState extends State<BottomTabsScreen> {
  final List<Widget> _pages = [
    //pages
    ClubsScreen(),
    ClubsScreen(), ClubsScreen(),
    ClubsScreen(),
    ClubsScreen()
  ];
  int _selectPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: _selectPageIndex,
        //type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(
              Icons.home,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(
              Icons.dashboard,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(
                Icons.add_alert,
              ),
              title: Text('')),
          BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(
                Icons.message,
              ),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              title: Text(''))
        ],
      ),
    );
  }
}
