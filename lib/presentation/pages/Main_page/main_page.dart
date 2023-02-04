import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:goodfood/presentation/pages/Home/HomeScreen.dart';
import 'package:goodfood/presentation/pages/Leaves/Leaves.dart';
import 'package:goodfood/presentation/pages/Notification/NotificationScreen.dart';
import 'package:goodfood/presentation/pages/Profile/ProfileScree.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _pages = [
    const HomeScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
    const LeaveScreen()
  ];
  int _currentIndex = 0;
  void onTappingMenu(int index) {
    setState(() {
      _currentIndex = index;
    });
    print('case${index}');

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            elevation: 10,
            currentIndex: _currentIndex,
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            iconSize: 28,
            onTap: ((index) {
              onTappingMenu(index);
            }),
            items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: 'Leaves'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'notification'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'my profile'),
        ]));
  }
}
