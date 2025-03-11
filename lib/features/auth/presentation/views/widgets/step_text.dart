import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class StepText extends StatelessWidget {
  const StepText({
    super.key,
    required this.Title,
    required this.SubTitle,
  });
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
          style: AppStyles.bold18,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          SubTitle,
          style: AppStyles.medium16.copyWith(color: AppColors.greyColor),
        ),
      ],
    );
  }
}
