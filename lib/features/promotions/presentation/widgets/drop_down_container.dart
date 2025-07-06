import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/core/utils/app_images.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/year_to_date_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DropDownContainer extends StatelessWidget {
  const DropDownContainer(
      {super.key,
      this.isFromMiddleContainer = false,
      this.isFromBottomContainer = false});
  final bool isFromMiddleContainer;
  final bool isFromBottomContainer;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (isFromMiddleContainer)
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  bottomLeft: Radius.circular(12.r),
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0.h, horizontal: 2.w),
              child: Text('Reach Trends',
                  style: TextStyle(fontSize: 15.sp, fontFamily: 'Karla')),
            ),
          ),
        if (isFromBottomContainer)
          Text(
            'Promotions',
            style: AppStyle.mainAppBar,
          ),
        Expanded(
          child: YearToDateDropdown(
            initialValue: 'Year to date',
          ),
        ),
        horizontalSpace(
            isFromMiddleContainer || isFromBottomContainer ? 4 : 16),
        CircleAvatar(
          backgroundColor: Color(0xffF5F5F5),
          radius: 24.r,
          child: SvgPicture.asset(
            AppImages.calendar,
          ),
        )
      ],
    );
  }
}
