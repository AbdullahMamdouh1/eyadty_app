import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  static TextStyle bold18 = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 18.sp, fontFamily: "Karla");
  static TextStyle bold28 = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 28.sp, fontFamily: "Karla");
  static TextStyle bold24 = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 24.sp, fontFamily: "Karla");

  static TextStyle semiBold15 = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 15.sp, fontFamily: "Karla");
  static TextStyle semiBold20 = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 20.sp, fontFamily: "Karla");

  static TextStyle regular15 = TextStyle(
      fontWeight: FontWeight.normal, fontSize: 15.sp, fontFamily: "Karla");

  static TextStyle medium16 = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 16.sp, fontFamily: "Karla");
  static TextStyle mainAppBar = TextStyle(
    fontSize: 20.sp,
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
