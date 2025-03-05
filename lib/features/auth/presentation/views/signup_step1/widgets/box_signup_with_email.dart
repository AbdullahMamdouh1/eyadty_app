import 'package:eyadty_app/core/widgets/custom_button.dart';
import 'package:eyadty_app/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_text_field.dart';
import 'policy_text.dart';

class BoxSignupWithEmail extends StatefulWidget {
  const BoxSignupWithEmail({
    super.key,
  });

  @override
  State<BoxSignupWithEmail> createState() => _BoxSignupWithEmailState();
}

class _BoxSignupWithEmailState extends State<BoxSignupWithEmail> {
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  final ConfirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0, left: 20, right: 20),
      child: Container(
        height: 400,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 24.0, left: 29, right: 29, bottom: 24),
          child: Column(
            children: [
              CustomTextFormField2(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                controller: EmailController,
                ispassword: false,
                textInputType: TextInputType.text,
                text: 'Email',
                hintText: 'example@example.com',
              ),
              SizedBox(
                height: 24,
              ),
              CustomTextFormField2(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                controller: PasswordController,
                ispassword: true,
                textInputType: TextInputType.text,
                text: 'Password',
                hintText: '********',
              ),
              SizedBox(
                height: 24,
              ),
              CustomTextFormField2(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                controller: ConfirmPasswordController,
                ispassword: true,
                textInputType: TextInputType.text,
                text: 'Confirm Password',
                hintText: '********',
              ),
              SizedBox(
                height: 24,
              ),
              PolicyText(
                onChanged: (bool value) {},
              ),
              SizedBox(
                height: 24,
              ),
              CustomButton(
                onPressed: () {},
                text: 'Sign Up',
                image: Assets.imagesLogin,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
