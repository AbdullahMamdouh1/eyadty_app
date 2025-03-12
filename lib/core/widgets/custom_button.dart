import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onPressed,
      required this.text,
      required this.image,
      required this.color});
  final VoidCallback onPressed;
  final String text;
  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black54),
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
          backgroundColor: color,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(image),
            SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: AppStyles.regular15.copyWith(
                color: Colors.grey[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  const CustomButton2(
      {super.key,
      required this.onPressed,
      required this.text,
       required this.color});
  final VoidCallback onPressed;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 54,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black54),
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
          backgroundColor: color,
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: AppStyles.regular15.copyWith(
                color: Colors.grey[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}







class CustomButton3 extends StatelessWidget {
  const CustomButton3(
      {super.key,
        required this.onPressed,
        required this.text,
        required this.color, required this.ColorText});
  final VoidCallback onPressed;
  final String text;
  final Color color;
  final Color ColorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
            text,
            style: TextStyle(color: ColorText),
          )),
    );
  }
}