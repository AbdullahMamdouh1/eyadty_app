import 'package:flutter/material.dart';

import '../../../../../../../core/utils/app_colors.dart';
import '../../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../../core/widgets/custom_container_shape.dart';
import '../../../widgets/already_have_account.dart';
 import '../../../widgets/end_text.dart';
import '../../../widgets/login_page_hero.dart';
import 'Pin_code_verification_login.dart';

class LoginVerifyViewBody extends StatelessWidget {
  const LoginVerifyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
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
                "Verify Your Identity",
                style: AppStyles.bold28.copyWith(color: AppColors.blackColor),
              ),
              SizedBox(
                height: 24,
              ),
              CustomContainerShape(
                Child: Padding(
                  padding: const EdgeInsets.only(left: 29.0, right: 29),
                  child: PinCodeVerificationLogin(),
                ),
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
