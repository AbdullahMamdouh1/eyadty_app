import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomBottomOption extends StatelessWidget {
  const CustomBottomOption(
      {super.key,
      required this.text,
      this.imagePath,
      required this.background,
      required this.textColor,
      this.borderColor,
      required this.onPressed});
  final String text;
  final String? imagePath;
  final Color background;
  final Color textColor;
  final Color? borderColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(background),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12.r),
          ),
        ),
        side: WidgetStatePropertyAll(
            BorderSide(color: borderColor ?? Colors.transparent)),
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
                color: textColor, fontSize: 12.sp, fontWeight: FontWeight.w400),
          ),
          if (imagePath != null) horizontalSpace(8),
          if (imagePath != null) SvgPicture.asset(imagePath!)
        ],
      ),
    );
  }
}
