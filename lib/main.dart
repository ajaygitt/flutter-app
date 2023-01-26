import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:goodfood/core/colors.dart';
import 'package:goodfood/presentation/main_page/bottom_nav.dart';


void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      theme: ThemeData(primarySwatch: Colors.red),
      home: Scaffold(
        backgroundColor: backGroundColor,
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }
}
