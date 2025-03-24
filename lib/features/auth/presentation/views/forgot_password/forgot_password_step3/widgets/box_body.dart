import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../core/helper_functions/on_generate_routes.dart';
import '../../../../../../../core/utils/app_colors.dart';
import '../../../../../../../core/widgets/custom_button.dart';
import '../../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../../../core/widgets/custom_text_field.dart';
import '../../../../../../../generated/assets.dart';
 import 'protect_your_privacy.dart';

class BoxBody extends StatelessWidget {
  const BoxBody({
    super.key,
    required this.EmailController,
    required this.PasswordController,
  });

  final TextEditingController EmailController;
  final TextEditingController PasswordController;

  @override
  Widget build(BuildContext context) {
    return CustomContainerShape(
        Child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30, top: 24),
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
                text: 'New Password',
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
                controller: PasswordController,
                ispassword: true,
                textInputType: TextInputType.text,
                text: 'Confirm Password',
                hintText: '********',
              ),
              SizedBox(
                height: 80,
              ),
              ProtectYourPrivacy(
                onChanged: (bool value) {},
              ),
              SizedBox(
                height: 24,
              ),
              CustomButton(
                text: 'Reset Password',
                onPressed: () {
                  context.push(AppRoutes.passwordResetCard);
                },
                image: Assets.imagesLock,
                color: AppColors.greenColor,
              ),
              sizedBox
            ],
          ),
        ),

        );
  }
}
