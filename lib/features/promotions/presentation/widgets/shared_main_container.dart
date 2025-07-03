import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SharedParentContainer extends StatelessWidget {
  const SharedParentContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.mainBorderColor, width: 1.2),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(18.r))),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 20.w),
        child: child,
      ),
    );
  }
}
