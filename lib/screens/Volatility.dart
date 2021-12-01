import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class VolatilityTest extends StatefulWidget {
  const VolatilityTest({Key? key}) : super(key: key);

  @override
  _VolatilityTestState createState() => _VolatilityTestState();
}

class _VolatilityTestState extends State<VolatilityTest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:
        MyApp() ,
      ),
    );
  }
}