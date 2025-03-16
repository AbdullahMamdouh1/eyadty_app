import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_text_styles.dart';

class  CustomTextFieldButton extends StatelessWidget {
  const CustomTextFieldButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 319,
      height: 43,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFFD9D9D9),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: AppStyles.regular15.copyWith(color: Colors.black),

            ),
            Transform.rotate(
                angle: 4.7,

                child: Icon(Icons.arrow_back_ios_new_rounded,size: 15,))

          ],
        ),
      ),
    );
  }
}
