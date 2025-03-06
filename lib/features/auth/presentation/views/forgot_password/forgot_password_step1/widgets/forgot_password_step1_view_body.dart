import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/features/auth/presentation/views/widgets/end_text.dart';
import 'package:flutter/material.dart';
import '../../../../../../../core/utils/app_text_styles.dart';
import '../../../widgets/already_have_account.dart';
import '../../../widgets/login_page_hero.dart';
import 'forgot_password_step1_box_body.dart';

class ForgotPasswordStep1ViewBody extends StatefulWidget {
  const ForgotPasswordStep1ViewBody({super.key});

  @override
  State<ForgotPasswordStep1ViewBody> createState() =>
      _ForgotPasswordStep1ViewBodyState();
}

class _ForgotPasswordStep1ViewBodyState
    extends State<ForgotPasswordStep1ViewBody> {
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
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Forgot Your Password?",
                  style:
                      TextStyles.bold28.copyWith(color: AppColors.blackColor)),
              Text(
                "Enter your email or phone number, and we’ll send you a code to reset your password.",
                style: TextStyles.medium16.copyWith(color: AppColors.greyColor),
              ),
              SizedBox(
                height: 24,
              ),
              ForgotPasswordStep1BoxBody(),
              SizedBox(
                height: 96,
              ),
              EndText(),
            ],
          ),
        )
      ],
    );
  }
}
