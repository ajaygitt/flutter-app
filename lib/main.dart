import 'package:flutter/material.dart';
import 'package:goodfood/presentation/pages/Leaves/Leaves.dart';
import 'package:goodfood/presentation/pages/Main_page/main_page.dart';
import 'package:goodfood/presentation/pages/Notification/NotificationScreen.dart';
import 'package:goodfood/presentation/pages/Profile/ProfileScree.dart';
import 'package:goodfood/presentation/pages/SplashScreen/SplashScreen.dart';


void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'FlutterApp',
      theme: ThemeData(primarySwatch: Colors.red),
      home: SplashScreen(),
      routes: {
        '/profile':(context) => ProfileScreen(),
        '/notification':(context) => NotificationScreen(),
        'leaves':(context) => LeaveScreen()
      },
    );
  }
}
