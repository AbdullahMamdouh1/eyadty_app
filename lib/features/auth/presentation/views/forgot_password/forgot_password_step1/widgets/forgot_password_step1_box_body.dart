import 'package:eyadty_app/core/helper_functions/on_generate_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../../core/utils/app_colors.dart';
import '../../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../../core/widgets/custom_button.dart';
import '../../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../../../core/widgets/custom_text_field.dart';
import '../../../../../../../generated/assets.dart';

class ForgotPasswordStep1BoxBody extends StatefulWidget {
  const ForgotPasswordStep1BoxBody({
    super.key,
  });

  @override
  State<ForgotPasswordStep1BoxBody> createState() =>
      _ForgotPasswordStep1BoxBodyState();
}

class _ForgotPasswordStep1BoxBodyState
    extends State<ForgotPasswordStep1BoxBody> {
  final EmailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomContainerShape(
        Child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                height: 80,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Need Help restoring your Password?",
                      style: AppStyles.regular15
                          .copyWith(color: AppColors.greyColor)),
                  Text("Contact Support",
                      style: AppStyles.semiBold15
                          .copyWith(color: AppColors.blueColor))
                ],
              ),
              SizedBox(
                height: 24,
              ),
              CustomButton(
                image: Assets.imagesLogin,
                onPressed: () {
                  context.push(AppRoutes.forgotPasswordStep2View);
                },
                text: 'Send Code',
                color: AppColors.greenColor,
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Did you remember your password already? ",
                      style: AppStyles.regular15
                          .copyWith(color: AppColors.greyColor)),
                  Text("Back to login screen",
                      style: AppStyles.semiBold15
                          .copyWith(color: AppColors.blueColor))
                ],
              ),
            ],
          ),
        ),
        );
  }
}
