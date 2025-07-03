import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/widgets/fitted_box.dart';

class PromotionsGraph extends StatelessWidget {
  const PromotionsGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200.h,
            child: BarChart(
              BarChartData(
                barGroups: _getBarGroups(),
                titlesData: FlTitlesData(
                  rightTitles: AxisTitles(
                      sideTitles: SideTitles(
                    showTitles: false,
                  )),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: true, interval: 1),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (value, meta) =>
                          Text(value.toInt().toString()),
                    ),
                  ),
                ),
                barTouchData: BarTouchData(enabled: true),
                gridData: FlGridData(
                  show: true,
                ),
                borderData: FlBorderData(
                    border: Border(
                  left: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black),
                )),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          FittedBoxS(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildIndicator(Colors.green, 'Follow Up Patients'),
                SizedBox(width: 15),
                _buildIndicator(Colors.blue, 'New Patients'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<BarChartGroupData> _getBarGroups() {
    final List<int> followUpPatients = [5, 2, 7, 3, 4, 8, 6, 2, 1, 10];
    final List<int> newPatients = [3, 4, 6, 5, 7, 4, 3, 7, 2, 9];

    return List.generate(10, (index) {
      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
              toY: followUpPatients[index].toDouble(),
              color: Colors.green,
              width: 12,
              borderRadius: BorderRadius.all(Radius.zero)),
          BarChartRodData(
            toY: newPatients[index].toDouble(),
            color: Colors.lightBlue,
            width: 12,
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ],
        barsSpace: 4,
      );
    });
  }

  Widget _buildIndicator(Color color, String text) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: 5),
        Text(text),
      ],
    );
  }
}
