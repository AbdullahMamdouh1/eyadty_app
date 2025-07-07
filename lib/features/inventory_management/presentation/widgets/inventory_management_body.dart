import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class InventoryManagementBody extends StatelessWidget {
  const InventoryManagementBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greyColor),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Table(
        border: TableBorder.all(
            color: AppColors.lightGrey,
            borderRadius: BorderRadius.circular(8.r)),
        columnWidths: const {
          0: FlexColumnWidth(2), // Promotion Name & Target Audience
          1: FlexColumnWidth(2),
          2: FlexColumnWidth(2), // Status & Reach
          3: FlexColumnWidth(0.8), // Actions & Checkbox
        },
        children: [
          // Header Row
          TableRow(
            decoration: BoxDecoration(
                color: Color(0xFFD8F0E7),
                borderRadius: BorderRadius.circular(8.r)),
            children: [
              buildHeaderCell('Name\nquantity'),
              buildHeaderCell('Price\nsupplier'),
              buildHeaderCell('Threshold'),
              buildPopUpHeader(),
            ],
          ),
          // Sample Data Rows
          buildDataRow(
            name: 'Dental Mirror',
            quantity: '5',
            price: '1,00EGP',
            supplier: 'Supplier',
            threshold: 0,
          ),
          buildDataRow(
            name: 'Dental Mirror',
            quantity: '5',
            price: '1,00EGP',
            supplier: 'Supplier',
            threshold: 1,
          ),
          buildDataRow(
            name: 'Dental Mirror',
            quantity: '5',
            price: '1,00EGP',
            supplier: 'Supplier',
            threshold: 2,
          ),
          buildDataRow(
            name: 'Dental Mirror',
            quantity: '5',
            price: '1,00EGP',
            supplier: 'Supplier',
            threshold: 3,
          ),
          buildDataRow(
            name: 'Dental Mirror',
            quantity: '5',
            price: '1,00EGP',
            supplier: 'Supplier',
            threshold: 4,
          ),
        ],
      ),
    );
  }

  Widget buildHeaderCell(String text, [double? borderRadius]) {
    return Container(
      padding: EdgeInsets.all(12.w),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(borderRadius ?? 0)),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          text,
          style: AppStyle.tableHeader,
        ),
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
    required String name,
    required String quantity,
    required String price,
    required String supplier,
    required int threshold,
  }) {
    final isEven = threshold % 2 == 0;
    final backgroundColor = isEven ? Colors.white : const Color(0xFFF5F5F5);

    return TableRow(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: AppStyle.tableItem),
              Row(
                children: [
                  Text(quantity, style: AppStyle.tableItem),
                  horizontalSpace(4),
                  CircleAvatar(
                    radius: 8.r,
                    backgroundColor: Color(0xffE7B831),
                  )
                ],
              ),
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
                price,
                style: AppStyle.tableItem,
              ),
              verticalSpace(16),
              Text(supplier, style: AppStyle.tableItem),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
          child: Row(
            children: [
              Text(
                '3',
                style: AppStyle.tableItem,
              ),
              Spacer(),
              Icon(
                Icons.arrow_drop_down,
                color: AppColors.tableIconColor,
              )
            ],
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 9.h),
            child: Icon(
              Icons.more_vert,
              size: 24.sp,
              color: AppColors.tableIconColor,
            ),
          ),
        )
      ],
    );
  }
}
