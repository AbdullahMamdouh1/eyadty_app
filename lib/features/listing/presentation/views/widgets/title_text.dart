import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.title, this.subTitle});
  final String title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: AppStyles.bold24,
        ),
        SizedBox(
          height: 8,
        ),
        if (subTitle != null)
          Text(
            subTitle!,
            style: AppStyles.semiBold20.copyWith(color: Color(0xFF757575)),
          ),
      ],
    );
  }
}
