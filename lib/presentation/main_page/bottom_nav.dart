import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.red,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.portable_wifi_off,color: Colors.white38,),
              label: 'test',
  
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
            icon: Icon(Icons.portable_wifi_off,color: Colors.white38),
            label: 'tw',
            backgroundColor: Colors.red,
          ),
        ]);
  }
}
