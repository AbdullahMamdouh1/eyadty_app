import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../../core/utils/app_text_styles.dart';
import '../../../widgets/or_line.dart';
import '../../../widgets/already_have_account.dart';
import '../../../widgets/login_page_hero.dart';
import 'box_login.dart';

class LoginStep1ViewBody extends StatelessWidget {
  const LoginStep1ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginPageHero(),
        SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: DontHaveAccount(),
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          "Log In to Your Account",
          style: AppStyles.bold28.copyWith(color: AppColors.blackColor),
        ),
        SizedBox(
          height: 24,
        ),
        SizedBox(height: 435, child: BoxLogin()),
        SizedBox(
          height: 32,
        ),
        OrLine(),
      ],
    );
  }
}
