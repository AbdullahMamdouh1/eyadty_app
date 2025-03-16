import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_text_field.dart';
import 'patient_controller.dart';

class PatientInformation extends StatelessWidget {
  const PatientInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller = PatientController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Patient Information", style: AppStyles.bold18),
        SizedBox(height: 24),

        // Name Field
        CustomTextFormField2(
          controller: Controller.nameController,
          validator: (value) => value!.isEmpty ? 'Please enter a name' : null,
          ispassword: false,
          textInputType: TextInputType.text,
          text: 'Name',
          hintText: 'John Doe',
        ),
        SizedBox(height: 24),

        // Birthday Field
        CustomTextFormField2(
          controller: Controller.birthdayController,
          validator: (value) =>
              value!.isEmpty ? 'Please enter a birthday' : null,
          ispassword: false,
          textInputType: TextInputType.datetime,
          text: 'Birthday',
          hintText: 'MM/DD/YYYY',
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
