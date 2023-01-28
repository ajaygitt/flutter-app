import 'package:flutter/material.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  void onTappingMenu(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
          elevation: 10,
          currentIndex: _currentIndex,
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          selectedItemColor:  Colors.white,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 28,
          onTap: ((index){onTappingMenu(index);}),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month), label: 'Leaves'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'notification'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'my profile'),
          ]),
    );
  }
}
