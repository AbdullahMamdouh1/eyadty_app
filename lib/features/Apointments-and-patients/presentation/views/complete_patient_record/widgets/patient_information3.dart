import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_text_field.dart';
import '../../../../../../generated/assets.dart';
import 'patient_controller3.dart';

class PatientInformation3 extends StatelessWidget {
  const PatientInformation3({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller = PatientController3();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(Assets.imagesPerson),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Ahmed Ali", style: AppStyles.regular15),
                Text("04/25/1982", style: AppStyles.regular15),
              ],
            ),
          ],
        ),
        SizedBox(height: 24),

        // Gender Field
        CustomTextFormField2(
          controller: Controller.genderController,
          validator: (value) => value!.isEmpty ? 'Please enter a gender' : null,
          ispassword: false,
          textInputType: TextInputType.text,
          text: 'Gender',
          hintText: 'Male/Female',
        ),
        SizedBox(height: 24),

        // Phone Number Field
        CustomTextFormField2(
          controller: Controller.phoneNumberController,
          validator: (value) =>
              value!.isEmpty ? 'Please enter a phone number' : null,
          ispassword: false,
          textInputType: TextInputType.phone,
          text: 'Phone Number',
          hintText: '+20 100 000 0000',
        ),
        SizedBox(height: 24),

        // Email Field
        CustomTextFormField2(
          controller: Controller.emailController,
          validator: (value) => value!.isEmpty ? 'Please enter an email' : null,
          ispassword: false,
          textInputType: TextInputType.emailAddress,
          text: 'Email',
          hintText: 'example@example.com',
        ),
      ],
    );
  }
}
