import 'package:flutter/material.dart';

import '../../../../../../../core/utils/app_colors.dart';
import '../../../../../../../core/utils/app_text_styles.dart';
import '../../../widgets/already_have_account.dart';
import '../../../widgets/end_text.dart';
import '../../../widgets/login_page_hero.dart';
import 'box_body.dart';

class ForgotPasswordStep3ViewBody extends StatefulWidget {
  const ForgotPasswordStep3ViewBody({super.key});

  @override
  State<ForgotPasswordStep3ViewBody> createState() =>
      _ForgotPasswordStep3ViewBodyState();
}

class _ForgotPasswordStep3ViewBodyState
    extends State<ForgotPasswordStep3ViewBody> {
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
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
          child: AlreadyHaveAccount(),
        ),
        SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Create a New Password",
                  style:
                      TextStyles.bold28.copyWith(color: AppColors.blackColor)),
              Text(
                "Ensure your account stays secure with a strong password",
                style: TextStyles.medium16.copyWith(color: AppColors.greyColor),
              ),
              SizedBox(
                height: 24,
              ),
              BoxBody(
                  EmailController: EmailController,
                  PasswordController: PasswordController),
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
