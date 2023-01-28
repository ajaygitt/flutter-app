import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:goodfood/presentation/components/bottom_nav/bottom_nav.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
