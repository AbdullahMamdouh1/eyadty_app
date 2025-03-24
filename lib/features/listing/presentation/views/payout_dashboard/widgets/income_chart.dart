import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/fitted_box.dart';

class IncomeChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBoxS(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 200,
                child: PieChart(
                  PieChartData(
                    sectionsSpace: 2,
                    centerSpaceRadius: 60,
                    startDegreeOffset: -10,
                    sections: _getSections(),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '15,000',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Egp',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 30),
          // Legend (مفتاح الألوان)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildIndicator(Colors.green, 'Pre-paid'),
              SizedBox(width: 15),
              _buildIndicator(Colors.amber, 'In-Clinic'),
              SizedBox(width: 15),
              _buildIndicator(Colors.grey, 'Cancelled'),
            ],
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> _getSections() {
    return [
      PieChartSectionData(
        color: Colors.green,
        value: 50,
        title: '',
        radius: 25,
      ),
      PieChartSectionData(
        color: Colors.amber,
        value: 30,
        title: '',
        radius: 25,
      ),
      PieChartSectionData(
        color: Colors.grey[300],
        value: 30,
        title: '',
        radius: 25,
      ),
    ];
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
