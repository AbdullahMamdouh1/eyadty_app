import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class PromotionsTable extends StatelessWidget {
  const PromotionsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Table(
        border: TableBorder.all(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(8.r)),
        columnWidths: const {
          0: FlexColumnWidth(3), // Promotion Name & Target Audience
          1: FlexColumnWidth(1.5), // Status & Reach
          2: FlexColumnWidth(1.2), // Actions & Checkbox
        },
        children: [
          // Header Row
          TableRow(
            decoration: BoxDecoration(
              color: Color(0xFFD8F0E7),
              borderRadius: BorderRadius.circular(8.r),
            ),
            children: [
              buildHeaderCell('Promotion Name\nTarget Audience'),
              buildHeaderCell('Status\nReach'),
              buildPopUpHeader(),
            ],
          ),
          // Sample Data Rows
          buildDataRow(
            promotionName: 'Summer Sale 2024',
            targetAudience: 'Youth (18-25)',
            status: 'Active',
            reach: '12.5K',
            index: 0,
          ),
          buildDataRow(
            promotionName: 'Winter Discount',
            targetAudience: 'All Ages',
            status: 'Inactive',
            reach: '8.2K',
            index: 1,
          ),
          buildDataRow(
            promotionName: 'Flash Sale',
            targetAudience: 'Premium Users',
            status: 'Active',
            reach: '5.8K',
            index: 2,
          ),
          buildDataRow(
            promotionName: 'Holiday Special',
            targetAudience: 'Families',
            status: 'Ongoing',
            reach: '15.3K',
            index: 3,
          ),
          buildDataRow(
            promotionName: 'Weekend Deal',
            targetAudience: 'Students',
            status: 'Active',
            reach: '3.7K',
            index: 4,
          ),
        ],
      ),
    );
  }

  Widget buildHeaderCell(String text) {
    return Container(
      padding: EdgeInsets.all(12.w),
      child: Text(
        text,
        style: AppStyle.tableHeader,
      ),
    );
  }

  Widget buildPopUpHeader() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 24.h),
        child: Icon(
          Icons.more_vert,
          size: 24.sp,
          color: Color(0xff246C51),
        ));
  }

  TableRow buildDataRow({
    required String promotionName,
    required String targetAudience,
    required String status,
    required String reach,
    required int index,
  }) {
    final isEven = index % 2 == 0;
    final backgroundColor = isEven ? Colors.white : const Color(0xFFF5F5F5);

    return TableRow(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      children: [
        // Promotion Details Column
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(promotionName, style: AppStyle.tableItem),
              verticalSpace(16),
              Text(targetAudience, style: AppStyle.tableItem),
            ],
          ),
        ),
        // Status & Reach Column
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                status,
                style: AppStyle.tableItem,
              ),
              verticalSpace(16),
              Text(reach, style: AppStyle.tableItem),
            ],
          ),
        ),
        // Actions Column
        Container(
          padding: EdgeInsets.all(12.w),
          child: CircleAvatar(
            backgroundColor: Color(0xff3DB588),
            radius: 10.r,
            child: CircleAvatar(
              radius: 8.r,
              backgroundColor: Color(0xffC5E9DC),
              child: Center(
                child: Icon(
                  Icons.check_sharp,
                  size: 14.sp,
                  color: Color(0xff3DB588),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
