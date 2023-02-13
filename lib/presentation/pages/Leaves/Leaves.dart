import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LeaveScreen extends StatefulWidget {
  const LeaveScreen({super.key});

  @override
  State<LeaveScreen> createState() => _LeaveScreenState();
}

class _LeaveScreenState extends State<LeaveScreen> {
  @override
  Widget build(BuildContext context) {
    print("okies");

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor:  Color(0xff1b263b),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          
        ),
      ),
    );
  }
}
