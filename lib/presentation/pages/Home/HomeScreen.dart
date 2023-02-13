import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:goodfood/presentation/components/home_services/HomeServices.dart';
import 'package:goodfood/presentation/components/home_slider/HomeSlider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          HomeSlider(),
        HomeServices()
        
        
        ],
      ),
    );
  }
}
