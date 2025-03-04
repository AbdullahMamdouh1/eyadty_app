 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_text_styles.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text, required this.image, required this.color});
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
            side: BorderSide(
              color: Colors.black54
            ),
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
            SizedBox(width: 8,),
            Text(
              text,
              style: TextStyles.bold16.copyWith(
                color: Colors.grey[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
