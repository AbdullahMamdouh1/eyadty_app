import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/assets.dart';

class ItemListing extends StatelessWidget {
  ItemListing({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.price,
    required this.customButton,
    required this.Width,
    required this.color,
  });
  final String title;
  final String subTitle;
  final String image;
  final String price;
  final Widget customButton;
  final double Width;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: BoxDecoration(
          color: color,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: double.infinity,
                height: 270,
                child: Image.asset(
                  image,
                  fit: BoxFit.fill,
                )),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: AppStyles.bold18,
                ),
                Row(
                  children: [
                    Text(
                      "\$${price}",
                      style: AppStyles.bold18,
                    ),
                    Text(
                      "/ month",
                      style: AppStyles.regular15,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text(subTitle,
                style: AppStyles.regular15.copyWith(color: Color(0xFF757575))),
            SizedBox(
              height: 16,
            ),
            Directionality(
                textDirection: TextDirection.rtl, child: customButton)
          ],
        ),
      ),
    );
  }
}
