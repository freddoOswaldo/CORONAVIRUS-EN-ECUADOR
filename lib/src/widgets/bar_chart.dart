import 'package:covid19_model/src/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: BarChart(BarChartData(
          borderData: FlBorderData(show: false),
          barGroups: getBarData(),
          titlesData: FlTitlesData(
            bottomTitles: SideTitles(
              getTitles: getDaysWeek,
              showTitles: true,
              textStyle: TextStyle(
                color: Color(0xFF7589A2),
                fontSize: 10,
                fontWeight: FontWeight.w200,
              ),
            ),
            leftTitles: SideTitles(
              showTitles: false,
            ),
          ))),
    );
  }

  getBarData() {
    List<double> data = [6, 10, 8, 7, 10, 15, 9];
    List<BarChartGroupData> bars = [];
    data.asMap().forEach(
          (i, value) => bars.add(
            BarChartGroupData(
              x: i,
              barRods: [
                BarChartRodData(
                  y: value,
                  color: (DateTime.now().weekday == 1
                              ? 6
                              : DateTime.now().weekday - 2) ==
                          i
                      ? primaryColor
                      : inactiveChartColor,
                  width: 16,
                )
              ],
            ),
          ),
        );
    return bars;
  }

  String getDaysWeek(double value) {
    switch (value.toInt()) {
      case 0:
        return 'LUN';
      case 1:
        return 'MA';
      case 2:
        return 'MIE';
      case 3:
        return 'JUE';
      case 4:
        return 'VIE';
      case 5:
        return 'SAB';
      case 6:
        return 'DOM';
      default:
        return '';
    }
  }
}
