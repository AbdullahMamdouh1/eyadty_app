import 'package:flutter/material.dart';

import '../../../../../../../core/utils/app_colors.dart';
import '../../../../../../../core/utils/app_text_styles.dart';
import '../../../widgets/already_have_account.dart';
import '../../../widgets/box_shape.dart';
import '../../../widgets/end_text.dart';
import '../../../widgets/login_page_hero.dart';
import 'Pin_code_verification_login.dart';

class LoginVerifyViewBody extends StatelessWidget {
  const LoginVerifyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LoginPageHero(),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: DontHaveAccount(),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Log In to Your Account",
                style: TextStyles.bold28.copyWith(color: AppColors.blackColor),
              ),
              SizedBox(
                height: 24,
              ),
              boxShape(
                Child: Padding(
                  padding: const EdgeInsets.only(left: 29.0, right: 29),
                  child: PinCodeVerificationLogin(),
                ),
                Height: 445,
              ),
              SizedBox(
                height: 120,
              ),
              EndText(),
              SizedBox(
                height: 32,
              )
            ],
          ),
        )
      ],
    );
  }
}
