import 'package:flutter/material.dart';

abstract class AppColors {
  static const white = Colors.white;
  static const black = Colors.black;
  static const Color greenColor = Color(0xff3DB588);
  static const Color greenlightColor = Color(0xFFB1E1CF);
  static const Color blueColor = Color(0xFF4BAAD4);
  static const Color blackColor = Color(0xFF0C0C0C);
  static const Color greyColor = Color(0xFF757575);
  static const lightGrey = Color(0xffF5F5F5);
  static const mainFontColor = Color(0xff3C4553);
  static const mainBorderColor = Color(0xffA2ABB9);
  static const childBorderColor = Color(0xffD9D9D9);
  static const secondaryFontColor = Color(0xffF5F5F5);
}

const dynamic sizedBox = SizedBox(
  height: 24,
);

class SizeConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;

  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }
}
