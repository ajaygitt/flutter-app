import 'package:flutter/material.dart';
import 'package:goodfood/presentation/components/bottom_nav/bottom_nav.dart';
import 'package:goodfood/presentation/pages/Main_page/main_page.dart';
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
      home: SplashScreen()
    );
  }
}
