import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/utils/app_text_styles.dart';

class CustomButtons {
  Widget buildButton(
      {required dynamic onPressedButton1,
      required String textButton1,
      required String imageButton1}) {
    return SizedBox(
      width: 320,
      height: 54,
      child: TextButton(
        style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black54),
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            backgroundColor: Color(0xFFE0E3E7)),
        onPressed: onPressedButton1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              textButton1,
              style: AppStyles.regular15.copyWith(
                color: Colors.black,
              ),
            ),
            SvgPicture.asset(imageButton1)
          ],
        ),
      ),
    );
  }
}
