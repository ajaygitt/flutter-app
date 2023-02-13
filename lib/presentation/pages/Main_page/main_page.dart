import 'package:flutter/material.dart';
import 'package:goodfood/presentation/pages/Home/HomeScreen.dart';
import 'package:goodfood/presentation/pages/Leaves/Leaves.dart';
import 'package:goodfood/presentation/pages/Notification/NotificationScreen.dart';
import 'package:goodfood/presentation/pages/Profile/ProfileScree.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color color = Color(0xff1b263b);
  String disp = '';

  final _pages = [
    const HomeScreen(),
    const LeaveScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];
  int _currentIndex = 0;
  void onTappingMenu(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff1b263b),
        title: Text("Impulse "),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 30.0,
                backgroundColor: Color.fromARGB(255, 73, 73, 73),
                foregroundColor: Color.fromARGB(255, 114, 114, 114),
                child: Icon(Icons.account_circle, size: 30.0),
              ))
        ],
      ),
      backgroundColor: const Color(0xff1b263b),
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        animationDuration: const Duration(microseconds: 400),
        backgroundColor: color,
        items: const [
          Icon(Icons.home),
          Icon(Icons.calendar_month),
          Icon(Icons.notifications),
        ],
        onTap: (index) {
          setState(() {
                          color = Color(0xff1b263b);

            // if (index == 0) {
            //   color = Color(0xff1b263b);
            // } else if (index == 1) {
            //   color = Colors.blueGrey;
            // } else {
            //   color = Colors.blueGrey;
            // }
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
