import 'package:covid19_model/src/utils/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.2,
      child: LineChart(LineChartData(
        gridData: FlGridData(show: false), // lineas del fondo del chart
        borderData: FlBorderData(show: false), // quitar bordes
        titlesData: FlTitlesData(show: false), // eliminar los label
        lineBarsData: [
          LineChartBarData(
            spots: point,
            isCurved: true, // los puntos se redondean
            dotData: FlDotData(show: false), // puntos
            colors: [primaryColor], //color de la línea
            barWidth: 4, //gorsor de la línea
          ),
        ],
      )),
    );
  }

  List<FlSpot> get point => [
        FlSpot(0, .5),
        FlSpot(1, 1.5),
        FlSpot(2, .5),
        FlSpot(3, .7),
        FlSpot(4, .2),
        FlSpot(5, 2),
        FlSpot(6, 1.5),
        FlSpot(7, 1.7),
        FlSpot(8, 1),
        FlSpot(9, 2.8),
        FlSpot(10, 2.5),
        FlSpot(11, 2.65),
      ];
}
