import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_text_styles.dart';
import '../../widgets/already_have_account.dart';
import '../../widgets/login_page_hero.dart';
import '../../widgets/step_text.dart';
import '../../widgets/or_line.dart';
import '../../widgets/steps_line.dart';
import 'tab_bar.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

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
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: StepsLine(
            color1: Colors.green,
          ),
        ),
        StepText(
          Title: 'Step 1 of 3:',
          SubTitle: "Choose how you'd like to create your account",
        ),
        SizedBox(
          height: 24,
        ),
        SizedBox(height: 618, child: TabBarWidget()),
        SizedBox(
          height: 32,
        ),
        OrLine(),
      ],
    );
  }
}

