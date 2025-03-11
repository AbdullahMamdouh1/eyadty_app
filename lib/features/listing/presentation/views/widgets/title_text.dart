import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.Title, required this.SubTitle});
  final String Title;
  final String SubTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8,
        ),
        Text(
          Title,
          style: AppStyles.bold24,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          SubTitle,
          style: AppStyles.semiBold20.copyWith(color: Color(0xFF757575)),
        ),
      ],
    );
  }
}
