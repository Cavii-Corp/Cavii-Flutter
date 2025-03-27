import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Graphique avec fl_chart"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(150.0),
          child: LineChart(
            LineChartData(
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(show: false),
              borderData: FlBorderData(show: true),
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(0, 1),
                    FlSpot(1, 3),
                    FlSpot(2, 1.5),
                    FlSpot(3, 4),
                    FlSpot(4, 2),
                  ],
                  isCurved: true,
                  belowBarData: BarAreaData(show: false), // Option pour afficher la zone en dessous
                  color: const Color.fromARGB(255, 137, 0, 228), // La couleur de la ligne
                  barWidth: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
