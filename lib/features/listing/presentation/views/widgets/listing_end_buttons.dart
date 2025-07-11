import 'package:eyadty_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/widgets/custom_button.dart';

class ListingEndButtons extends StatelessWidget {
  const ListingEndButtons({
    super.key,
    required this.onPressedButton1,
    required this.onPressedButton2,
    required this.onPressedButtonSave,
    required this.onPressedButtonBack,
    required this.textButton1,
    required this.imageButton1,
    required this.textButton2,
    required this.Visible,
  });
  final VoidCallback onPressedButton1;
  final VoidCallback onPressedButton2;
  final VoidCallback onPressedButtonSave;
  final VoidCallback onPressedButtonBack;
  final String textButton1;
  final String imageButton1;
  final String textButton2;
  final bool Visible;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Visibility(
          visible: Visible,
          child: SizedBox(
            width: 230,
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
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Directionality(
          textDirection: TextDirection.rtl,
          child: CustomButton(
              onPressed: onPressedButton2,
              text: textButton2,
              image: AppImages.imagesArrowForward,
              color: AppColors.greenColor),
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 170,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: CustomButton(
                    onPressed: onPressedButtonSave,
                    text: "Save As Draft ",
                    image: AppImages.imagesSave,
                    color: AppColors.blueColor),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            SizedBox(
              width: 80,
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
                onPressed: onPressedButtonBack,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Back",
                      style: AppStyles.regular15.copyWith(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
