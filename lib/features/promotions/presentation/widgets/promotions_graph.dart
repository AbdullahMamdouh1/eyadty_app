import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            child: LineChart(
              LineChartData(
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: true,
                  drawHorizontalLine: true,
                  horizontalInterval: 1,
                  verticalInterval: 1,
                  getDrawingHorizontalLine: (value) => FlLine(
                    color: Colors.grey.withOpacity(0.3),
                    strokeWidth: 1,
                  ),
                  getDrawingVerticalLine: (value) => FlLine(
                    color: Colors.grey.withOpacity(0.3),
                    strokeWidth: 1,
                  ),
                ),
                titlesData: FlTitlesData(
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 2,
                      getTitlesWidget: (value, meta) => Text(
                        value.toInt().toString(),
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 1,
                      getTitlesWidget: (value, meta) => Text(
                        value.toInt().toString(),
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border(
                    left: BorderSide(color: Colors.black, width: 2),
                    bottom: BorderSide(color: Colors.black, width: 2),
                    right: BorderSide(color: Colors.transparent),
                    top: BorderSide(color: Colors.transparent),
                  ),
                ),
                lineBarsData: [
                  // Follow Up Patients Line
                  LineChartBarData(
                    spots: _getFollowUpSpots(),
                    isCurved: false, // Straight lines between points
                    color: Color(0xff30906C),
                    barWidth: 3,
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) =>
                          FlDotCirclePainter(
                        radius: 4,
                        color: AppColors.white,
                        strokeWidth: 2,
                        strokeColor: Color(0xff30906C),
                      ),
                    ),
                    belowBarData: BarAreaData(show: false),
                  ),
                  // New Patients Line
                  LineChartBarData(
                    spots: _getNewPatientsSpots(),
                    isCurved: false, // Straight lines between points
                    color: Color(0xff757575),
                    barWidth: 3,
                    dotData: FlDotData(
                      show: true,
                      getDotPainter: (spot, percent, barData, index) =>
                          FlDotCirclePainter(
                        radius: 4,
                        color: AppColors.white,
                        strokeWidth: 2,
                        strokeColor: Color(0xff757575),
                      ),
                    ),
                    belowBarData: BarAreaData(show: false),
                  ),
                ],
                minX: 0,
                maxX: 10,
                minY: 0,
                maxY: 12,
                lineTouchData: LineTouchData(
                  enabled: true,
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipItems: (touchedSpots) {
                      return touchedSpots.map((spot) {
                        String label = spot.barIndex == 0
                            ? 'Follow Up: ${spot.y.toInt()}'
                            : 'New Patient: ${spot.y.toInt()}';
                        return LineTooltipItem(
                          '$label\nX: ${spot.x.toInt()}',
                          TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        );
                      }).toList();
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<FlSpot> _getFollowUpSpots() {
    final List<int> followUpPatients = [5, 2, 7, 3, 4, 8, 6, 2, 1, 10];

    return List.generate(followUpPatients.length, (index) {
      return FlSpot(
        (index + 1).toDouble(), // X-axis: 1, 2, 3, 4, etc.
        followUpPatients[index].toDouble(), // Y-axis: actual values
      );
    });
  }

  List<FlSpot> _getNewPatientsSpots() {
    final List<int> newPatients = [3, 4, 6, 5, 7, 4, 3, 7, 2, 9];

    return List.generate(newPatients.length, (index) {
      return FlSpot(
        (index + 1).toDouble(), // X-axis: 1, 2, 3, 4, etc.
        newPatients[index].toDouble(), // Y-axis: actual values
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
