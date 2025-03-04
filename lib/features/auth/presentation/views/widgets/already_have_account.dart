import 'package:flutter/material.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Already have Account? ",
          style: TextStyles.regular15,
        ),
        Text(
          "Login",
          style: TextStyles.semiBold15.copyWith(color: AppColors.blueColor),
        )
      ],
    );
  }
}
