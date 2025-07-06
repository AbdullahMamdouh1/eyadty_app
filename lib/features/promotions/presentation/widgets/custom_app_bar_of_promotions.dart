import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/utils/app_images.dart';
import 'package:eyadty_app/core/utils/app_padding.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.text, this.textStyle, this.onPressed});
  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.lightGrey,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(48.r),
              bottomRight: Radius.circular(48.r))),
      child: Padding(
        padding: EdgeInsetsGeometry.symmetric(
          horizontal: AppPadding.horizentalPadding.w,
          vertical: 20.5.h,
        ),
        child: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Row(
                children: [
                  if (onPressed != null)
                    InkWell(
                      onTap: onPressed,
                      child: Icon(
                        Icons.arrow_back,
                        size: 20.sp,
                        color: AppColors.greenColor,
                      ),
                    ),
                  if (onPressed != null) horizontalSpace(16),
                  Text(
                    text,
                    style: textStyle,
                  ),
                  Spacer(),
                  Icon(
                    Icons.search,
                    color: AppColors.greenColor,
                    size: 24.sp,
                  ),
                  horizontalSpace(4),
                  SvgPicture.asset(
                    AppImages.notigications,
                    height: 20.sp,
                    width: 20.sp,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
