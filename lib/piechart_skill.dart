import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:web_myself/utils/size.dart';

// ignore: must_be_immutable
class SkillInPieChart extends StatelessWidget {
  SkillInPieChart({super.key});
  Map<String, double> dataMap = {
    "Dart": 30,
    "OOP": 20,
    "Api": 10,
    "firebase": 5,
    "git": 15,
    "github": 10,
    "Canva": 20,
    "Html": 5,
    "Css": 5,
  };
  List<Color> collorList = [
    const Color(0xFFFFD000),
    const Color(0xFF1AFF00),
    const Color(0xFF912AFF),
    const Color(0xFF164CFF),
    const Color(0xFF00E1FF),
    const Color(0xFF00BBFF),
    const Color(0xFFB93232),
    const Color(0xFFFF55E0),
    const Color(0xFF8739FC),
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
      return SizedBox(
        width: constraint.maxWidth > mobileSize?300:400,
        child: PieChart(
          chartType: ChartType.disc,
          dataMap: dataMap,
          colorList: collorList,
          chartRadius: 200,
          centerText: "Skills",
          legendOptions: LegendOptions(
              showLegendsInRow: constraint.maxWidth > mobileSize ? true : false,
              legendPosition: constraint.maxWidth > mobileSize
                  ? LegendPosition.bottom
                  : LegendPosition.right),
          chartValuesOptions: const ChartValuesOptions(
              chartValueStyle: TextStyle(fontSize: 20, color: Color(0xFF83FFBB)),
              decimalPlaces: 0,
              showChartValues: true,
              showChartValuesOutside: true,
              showChartValuesInPercentage: true,
              showChartValueBackground: false),
          animationDuration: const Duration(seconds: 5),
        ),
      );
    });
  }
}
