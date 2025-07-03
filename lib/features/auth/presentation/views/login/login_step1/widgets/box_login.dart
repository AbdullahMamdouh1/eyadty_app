import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/utils/app_images.dart';
import 'package:eyadty_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../core/routing/routes.dart';
import '../../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../../core/widgets/custom_text_field.dart';

class BoxLogin extends StatefulWidget {
  const BoxLogin({
    super.key,
  });

  @override
  State<BoxLogin> createState() => _BoxLoginState();
}

class _BoxLoginState extends State<BoxLogin> {
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  final ConfirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
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
                text: 'Email or Phone Number',
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
              CustomButton(
                onPressed: () {
                  context.push(Routes.loginVerifyView);
                },
                text: 'Log In',
                image: AppImages.imagesLogin,
                color: Colors.green,
              ),
              SizedBox(
                height: 44,
              ),
              GestureDetector(
                onTap: () {
                  context.push(Routes.forgotPasswordStep1View);
                },
                child: Text(
                  "Forget Your Password?",
                  style:
                      AppStyles.regular15.copyWith(color: AppColors.greyColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
