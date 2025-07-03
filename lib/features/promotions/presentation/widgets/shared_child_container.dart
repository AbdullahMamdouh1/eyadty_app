import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class SharedChildContainer extends StatelessWidget {
  const SharedChildContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.childBorderColor, width: 1.2),
        borderRadius: BorderRadius.all(Radius.circular(18.r)),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w, vertical: 16.h),
        child: child,
      ),
    );
  }
}
