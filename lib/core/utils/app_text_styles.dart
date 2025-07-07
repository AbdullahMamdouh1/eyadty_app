import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Normal / regular / plain.
//static const FontWeight w400 = FontWeight._(3, 400);

/// Medium.
///static const FontWeight w500 = FontWeight._(4, 500);

/// Semi-bold.
//static const FontWeight w600 = FontWeight._(5, 600);

/// Bold.
//static const FontWeight w700 = FontWeight._(6, 700);

abstract class AppStyles {
  //    1 bold
  static TextStyle bold18 = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 18.sp, fontFamily: "Karla");
  static TextStyle bold28 = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 28.sp, fontFamily: "Karla");
  static TextStyle bold24 = TextStyle(
      fontWeight: FontWeight.bold, fontSize: 24.sp, fontFamily: "Karla");

  // 2 semiBold
  static TextStyle semiBold15 = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 15.sp, fontFamily: "Karla");
  static TextStyle semiBold20 = TextStyle(
      fontWeight: FontWeight.w600, fontSize: 20.sp, fontFamily: "Karla");

  // 3 regular
  static TextStyle regular15 = TextStyle(
      fontWeight: FontWeight.normal, fontSize: 15.sp, fontFamily: "Karla");

//  4 medium
  static TextStyle medium16 = TextStyle(
      fontWeight: FontWeight.w500, fontSize: 16.sp, fontFamily: "Karla");
}
