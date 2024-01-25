import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyLineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            horizontalInterval: 200, 
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: Colors.grey[300],
                strokeWidth: 1,
              );
            },
          ),

         
          titlesData: FlTitlesData(
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 22,
                getTitlesWidget: (double value, TitleMeta meta) {
                  switch (value.toInt()) {
                    case 0:
                      return Text('sun');
                    case 1:
                      return Text('Mon');
                    case 2:
                      return Text('Tue');
                    case 3:
                      return Text('Wed');
                    case 4:
                      return Text('Thu');
                    case 5:
                      return Text('Fri');
                    // case 6:
                    //   return Text('Sat');
                    default:
                      return Text('');
                  }
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (double value, TitleMeta meta) {
                  switch (value.toInt()) {
                    case 0:
                      return Text('0');
                    case 200:
                      return Text('200');
                    case 400:
                      return Text('400');
                    case 600:
                      return Text('600');
                    case 800:
                      return Text('800');
                    default:
                      return Text('');
                  }
                },
                reservedSize: 32,
              ),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: Colors.white, width: 1),
          ),
          minX: 0,
          maxX: 6,
          minY: 0,
          maxY: 800,
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 300),

                // FlSpot(1, 400),
                FlSpot(1.5, 612),

                FlSpot(2.5, 300),
                FlSpot(4, 500),
                FlSpot(5, 400),
                // FlSpot(6, 650),
              ],
              isCurved: true,
              color: Colors.blue,
              barWidth: 5,
              isStrokeCapRound: true,
              dotData: FlDotData(show: true),
              belowBarData: BarAreaData(show: false),
            ),
          ],
          lineTouchData: LineTouchData()),
    );
  }
}
