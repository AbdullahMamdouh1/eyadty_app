import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/widgets/custom_button.dart';
import 'list_view_item.dart';
import 'table_promotion.dart';

class OffersListingPageViewBody extends StatelessWidget {
  OffersListingPageViewBody({super.key});
  final table5 = TablePromotion();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
                width: 90.w,
                child: CustomButton3(
                  onPressed: () {},
                  text: 'All Offers',
                  color: Color(0xFFCFF7D3),
                  ColorText: AppColors.greenColor,
                )),
            SizedBox(
                width: 60.w,
                child: CustomButton3(
                  onPressed: () {},
                  text: 'Active',
                  color: Color(0xFFCFF7D3),
                  ColorText: AppColors.greenColor,
                )),
            SizedBox(
                width: 90.w,
                child: CustomButton3(
                  onPressed: () {},
                  text: 'Scheduled ',
                  color: Color(0xFFFFF1C2),
                  ColorText: Color(0xFF682D03),
                )),
            SizedBox(
                width: 70.w,
                child: CustomButton3(
                  onPressed: () {},
                  text: 'Expired',
                  color: Color(0xFFFDD3D0),
                  ColorText: Color(0xFF900B09),
                )),
          ],
        ),
        Row(
          children: [
            SizedBox(
                width: 60.w,
                child: CustomButton3(
                  onPressed: () {},
                  text: 'Draft',
                  color: Color(0xFFF5F5F5),
                  ColorText: Color(0xFF1E1E1E),
                )),
            SizedBox(
                width: 100.w,
                child: CustomButton3(
                  onPressed: () {},
                  text: 'Deactivated',
                  color: Color(0xFFFDD3D0),
                  ColorText: Color(0xFF900B09),
                )),
          ],
        ),
        verticalSpace(20),
        table5.TableShape(Child: ListViewItem(), height: 400),
        verticalSpace(50)
      ],
    );
  }
}
