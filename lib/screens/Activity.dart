import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutterapp/screens/pie_chart.dart';

import '../main.dart';
import 'Home.dart';
import 'Menu.dart';
import 'Zoom_Drawer.dart';

class ActivityTest extends StatefulWidget {
  const ActivityTest({Key? key}) : super(key: key);

  @override
  _ActivityTestState createState() => _ActivityTestState();
}

class _ActivityTestState extends State<ActivityTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child:Center(
            child: pie_chartTest(),
          )
      ),
    );
  }
}