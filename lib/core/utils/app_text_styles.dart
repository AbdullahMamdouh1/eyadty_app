import 'package:flutter/material.dart';

/// Normal / regular / plain.
//static const FontWeight w400 = FontWeight._(3, 400);

/// Medium.
///static const FontWeight w500 = FontWeight._(4, 500);

/// Semi-bold.
//static const FontWeight w600 = FontWeight._(5, 600);

/// Bold.
//static const FontWeight w700 = FontWeight._(6, 700);

abstract class TextStyles {
  //    1 bold
  static const TextStyle bold18 =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 18, fontFamily: "Karla");
  static const TextStyle bold28 =
  TextStyle(fontWeight: FontWeight.bold, fontSize: 28, fontFamily: "Karla");


  // 2 semiBold
  static const TextStyle semiBold15 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 15, fontFamily: "Karla");

  // 3 regular
  static const TextStyle regular15 = TextStyle(
      fontWeight: FontWeight.normal, fontSize: 15, fontFamily: "Karla");

//  4 medium
  static const TextStyle medium16 =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 16, fontFamily: "Karla");
}
