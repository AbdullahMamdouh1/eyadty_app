import 'package:eyadty_app/core/helper_functions/on_generate_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          onTap: (){
            context.push(AppRoutes.loginStep1View);
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
          onTap: (){
            context.push(AppRoutes.signupView);
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
