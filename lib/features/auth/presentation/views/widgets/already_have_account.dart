import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
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
          style: AppStyles.regular15,
        ),
        GestureDetector(
          onTap: () {
            context.push(Routes.loginStep1View);
          },
          child: Text(
            "Login",
            style: AppStyles.semiBold15.copyWith(color: AppColors.blueColor),
          ),
        )
      ],
    );
  }
}

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Don’t Have Account? ",
          style: AppStyles.regular15,
        ),
        GestureDetector(
          onTap: () {
            context.push(Routes.signupView);
          },
          child: Text(
            "Sign Up",
            style: AppStyles.semiBold15.copyWith(color: AppColors.blueColor),
          ),
        )
      ],
    );
  }
}
