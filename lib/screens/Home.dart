import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:flutterapp/screens/Zoom_Drawer.dart';

import '../main.dart';
import 'Bottom_nav_bar.dart';

class MAIN_SCREEN extends StatefulWidget {
  const MAIN_SCREEN({Key? key}) : super(key: key);

  @override
  _MAIN_SCREENState createState() => _MAIN_SCREENState();
}

class _MAIN_SCREENState extends State<MAIN_SCREEN> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
            Column(
              children: [
                MyApp(),
                Scaffold(
                 appBar: AppBar(
                 leading: IconButton(
                  onPressed: () => ZoomDrawer.of(context)!.toggle(),
                  icon: const Icon(Icons.menu))),
                 body: MenuWidget(),
                ),
              ],
            ),
      ),
    );
  }
}