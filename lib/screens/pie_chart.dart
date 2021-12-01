import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/cupertino.dart';

class pie_chartTest extends StatefulWidget {
  const pie_chartTest({Key? key}) : super(key: key);

  @override
  pie_chartTestState createState() => pie_chartTestState();
}

class pie_chartTestState extends State<pie_chartTest> {
  final DataMap = <String, double>{
    "Bitcoin": 3,
    "ethereum": 7,
  };
  final colorList = <Color>[
    Color(0xff46be52),
    Color(0xFFE74C3C),
  ];

  ChartType? _chartType = ChartType.disc;
  bool _showCenterText = true;
  double? _ringStrokeWidth = 32;
  double? _chartLegendSpacing = 32;

  bool _showLegendsInRow = false;
  bool _showLegends = true;

  bool _showChartValueBackground = true;
  bool _showChartValues = true;
  bool _showChartValuesInPercentage = false;
  bool _showChartValuesOutside = false;

  bool _showGradientColors = false;

  LegendPosition? _legendPosition = LegendPosition.right;

  int key = 0;
  @override
  Widget build(BuildContext context) {
    var _BoxShape;
    return Container(
      color: Colors.white,
      child:
          SafeArea(
              child:
                Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          PieChart(
                            dataMap: DataMap,
                            animationDuration: Duration(milliseconds: 800),
                            chartLegendSpacing: 32,
                            chartRadius: MediaQuery.of(context).size.width / 3.2,
                            colorList: colorList,
                            initialAngleInDegree: 0,
                            chartType: ChartType.ring,
                            ringStrokeWidth: 50,
                            legendOptions: LegendOptions(
                              showLegendsInRow: false,
                              legendPosition: LegendPosition.bottom,
                              showLegends: true,
                              legendTextStyle: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 25,
                              ),
                            ),
                            chartValuesOptions: ChartValuesOptions(
                              showChartValueBackground: true,
                              showChartValues: true,
                              showChartValuesInPercentage: false,
                              showChartValuesOutside: false,
                              decimalPlaces: 1,
                            ),
                            // gradientList: ---To add gradient colors---
                            // emptyColorGradient: ---Empty Color gradient---
                          ),


                        ],
                      ),
                    ),
                  ],
                )
          ),
    );
  }
}
