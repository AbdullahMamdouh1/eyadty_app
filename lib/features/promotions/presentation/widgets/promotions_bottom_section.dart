import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/drop_down_container.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/shared_child_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromotionsBottomSection extends StatelessWidget {
  const PromotionsBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedChildContainer(
      child: Column(
        children: [
          DropDownContainer(
            isFromBottomContainer: true,
          ),
          verticalSpace(24),
          // Promotions Table
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Table(
              border: TableBorder.all(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.circular(12.r)),
              columnWidths: const {
                0: FlexColumnWidth(1.8),
                1: FlexColumnWidth(1.4),
                2: FlexColumnWidth(1.0),
                3: FlexColumnWidth(1),
              },
              children: [
                // Header Row
                TableRow(
                  decoration: const BoxDecoration(
                    color: Color(0xFFD8F0E7),
                  ),
                  children: [
                    _buildHeaderCell('Promotion Name'),
                    _buildHeaderCell('Target Audience'),
                    _buildHeaderCell('Status'),
                    _buildHeaderCell('Reach'),
                  ],
                ),
                // Sample Data Rows
                _buildDataRow(
                    ['Summer Sale 2024', 'Youth (18-25)', 'Active', '12.5K'],
                    0),
                _buildDataRow(
                    ['Winter Discount', 'All Ages', 'Inactive', '8.2K'], 1),
                _buildDataRow(
                    ['Flash Sale', 'Premium Users', 'Active', '5.8K'], 2),
                _buildDataRow(
                    ['Holiday Special', 'Families', 'Pending', '15.3K'], 3),
                _buildDataRow(
                    ['Weekend Deal', 'Students', 'Active', '3.7K'], 4),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderCell(String text) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  TableRow _buildDataRow(List<String> data, int index) {
    final isEven = index % 2 == 0;
    final backgroundColor = isEven ? Colors.white : const Color(0xFFF5F5F5);

    return TableRow(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      children: data.map((cellData) => _buildDataCell(cellData)).toList(),
    );
  }

  Widget _buildDataCell(String text) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 0.5),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 13,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
