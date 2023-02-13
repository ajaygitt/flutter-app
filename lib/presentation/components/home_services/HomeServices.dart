import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeServices extends StatefulWidget {
  const HomeServices({super.key});

  @override
  State<HomeServices> createState() => _HomeServicesState();
}

class _HomeServicesState extends State<HomeServices> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            EdgeInsets.only(top: 20.0, bottom: 20.0, left: 10.0, right: 10.0),
        child: Container(
            width: double.infinity,
  height: 300.0,

          alignment: Alignment.topLeft,
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(4, (index) {
              return Container(
                color: Colors.black45,

                margin: EdgeInsets.all(5.0),
                width: 15,
                height: 25,
              );
            }),
          ),
        ));
  }
}
