 import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../../core/widgets/fitted_box.dart';
import '../../widgets/steps_line.dart';
import '../../widgets/already_have_account.dart';
import '../../widgets/end_text.dart';
import '../../widgets/login_page_hero.dart';
import '../../widgets/step_text.dart';
import 'Pin_code_verification.dart';

class SignupStep2ViewBody extends StatelessWidget {
  const SignupStep2ViewBody({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: AlreadyHaveAccount(),
              ),
              SizedBox(
                height: 32,
              ),
              FittedBoxS(
                child: StepsLine(
                  color1: Colors.green,
                  color2: Colors.green,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              StepText(
                Title: 'Step 2 of 3:',
                SubTitle: "Verify Your Account",
              ),
              SizedBox(
                height: 24,
              ),
              CustomContainerShape(
                Child: Padding(
                  padding: const EdgeInsets.only(left: 29.0, right: 29),
                  child: PinCodeVerification(),
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
