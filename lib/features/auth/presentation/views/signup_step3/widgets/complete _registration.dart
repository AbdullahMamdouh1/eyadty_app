import 'package:eyadty_app/core/utils/app_colors.dart';
 import 'package:eyadty_app/features/auth/presentation/views/signup_step3/widgets/account_selection.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_text_field.dart';

class CompleteRegistration extends StatefulWidget {
  const CompleteRegistration({super.key});

  @override
  State<CompleteRegistration> createState() => _CompleteRegistrationState();
}

class _CompleteRegistrationState extends State<CompleteRegistration> {
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  final ConfirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tell us more about yourself",
          style: TextStyles.bold18.copyWith(color: AppColors.greenColor),
        ),

        SizedBox(
          height: 24,
        ),
        ////  1
        CustomTextFormField2(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          controller: PasswordController,
          ispassword: false,
          textInputType: TextInputType.text,
          text: 'Full Name',
          hintText: 'Johne Doe',
        ),
        SizedBox(
          height: 24,
        ),
        ////  2
        CustomTextFormField2(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          controller: PasswordController,
          ispassword: false,
          textInputType: TextInputType.text,
          text: 'Email',
          hintText: 'example@example.com',
        ),
        SizedBox(
          height: 24,
        ),
        ////  3
        CustomTextFormField2(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          controller: PasswordController,
          ispassword: false,
          textInputType: TextInputType.text,
          text: 'Phone Number',
          hintText: '+20 888 888 8888',
        ),
        SizedBox(
          height: 24,
        ),
        Text(
          "Tell us more about your work",
          style: TextStyles.bold18.copyWith(color: AppColors.greenColor),
        ),
        SizedBox(
          height: 24,
        ),

        ////  4
        CustomTextFormField2(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          controller: PasswordController,
          ispassword: false,
          textInputType: TextInputType.text,
          text: 'Business Name',
          hintText: "Johne Doe's Clinic",
        ),
        SizedBox(
          height: 24,
        ),
        ////  5
        CustomTextFormField2(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          controller: PasswordController,
          ispassword: false,
          textInputType: TextInputType.text,
          text: 'Business City',
          hintText: 'Select City',
        ),
        SizedBox(
          height: 24,
        ),
        ////  6
        CustomTextFormField2(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          controller: PasswordController,
          ispassword: false,
          textInputType: TextInputType.text,
          text: 'Business Address 1',
          hintText: 'Appartment, Building, Street',
        ),
        SizedBox(
          height: 24,
        ),
        ////  7
        CustomTextFormField2(
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          controller: PasswordController,
          ispassword: false,
          textInputType: TextInputType.text,
          text: 'Business Address 2',
          hintText: 'Landmark, Town, Neighborhood',
        ),
        SizedBox(
          height: 24,
        ),

        AccountSelection(),
        SizedBox(
          height: 24,
        ),
        CustomButton2(
          color: AppColors.greenColor,
          onPressed: () {},
          text: 'Create My Account',
        ),

      ],
    );
  }
}
