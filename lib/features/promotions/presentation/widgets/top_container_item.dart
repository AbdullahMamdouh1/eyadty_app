import 'package:eyadty_app/core/utils/app_images.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TopContainerItem extends StatelessWidget {
  const TopContainerItem(
      {super.key,
      required this.containerColor,
      required this.titleColor,
      required this.title,
      required this.number,
      required this.avatarColor});
  final Color containerColor;
  final Color titleColor;
  final String title;
  final String number;
  final Color avatarColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r), color: containerColor),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.w, top: 8.h),
            child: Text(
              title,
              style: TextStyle(
                color: titleColor,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'Karla',
              ),
            ),
          ),
          Positioned(
            bottom: 22,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w),
                  child: SvgPicture.asset(AppImages.eye),
                ),
                horizontalSpace(8),
                Text(
                  'View',
                  style: TextStyle(
                    fontSize: 15.sp,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -40,
            right: -30,
            child: CircleAvatar(
              radius: 55.r,
              backgroundColor: avatarColor,
              child: Transform.translate(
                offset: Offset(-10, -15),
                child: Text(
                  '$number K',
                  style: TextStyle(
                      fontSize: 28.sp,
                      color: titleColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
