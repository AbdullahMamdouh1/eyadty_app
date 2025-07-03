import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  static TextStyle mainAppBar = TextStyle(
    fontSize: 18.sp,
    color: AppColors.mainFontColor,
    fontFamily: 'Karla',
    fontWeight: FontWeight.bold,
  );
  static TextStyle campaignSteps = TextStyle(
    fontFamily: 'Karla',
    fontWeight: FontWeight.bold,
    color: Color(0xff1E1E1E),
    fontSize: 18.sp,
  );
  static TextStyle campaignContainer = TextStyle(
    color: Color(0xffB3B3B3),
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );
  static TextStyle campaignItem = TextStyle(
    color: Color(0xff1E1E1E),
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Karla',
  );
  static TextStyle tableHeader = TextStyle(
    fontSize: 16.sp,
    color: Color(0xff3C4553),
    fontFamily: 'Karla',
    fontWeight: FontWeight.bold,
  );
  static TextStyle tableItem = TextStyle(
    color: Color(0xff505C6F),
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    fontFamily: 'Karla',
  );
}
