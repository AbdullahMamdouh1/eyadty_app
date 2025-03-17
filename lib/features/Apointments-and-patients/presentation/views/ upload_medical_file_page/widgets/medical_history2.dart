import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_text_field.dart';
import 'patient_controller2.dart';

class MedicalHistory2 extends StatelessWidget {
  const MedicalHistory2({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller = PatientController2();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Medical History", style: AppStyles.bold18),
        SizedBox(height: 24),

        // Allergies Field
        CustomTextFormField2(
          controller: Controller.allergiesController,
          validator: (value) =>
              value!.isEmpty ? 'Please enter allergies' : null,
          ispassword: false,
          textInputType: TextInputType.text,
          text: 'Allergies',
          hintText: 'Penicillin',
        ),
        SizedBox(height: 24),

        // Previous Surgeries Field
        CustomTextFormField2(
          controller: Controller.surgeriesController,
          validator: (value) =>
              value!.isEmpty ? 'Please enter previous surgeries' : null,
          ispassword: false,
          textInputType: TextInputType.text,
          text: 'Previous Surgeries',
          hintText: 'Appendectomy',
        ),
        SizedBox(height: 24),

        // Chronic Conditions Field
        CustomTextFormField2(
          controller: Controller.chronicConditionsController,
          validator: (value) =>
              value!.isEmpty ? 'Please enter chronic conditions' : null,
          ispassword: false,
          textInputType: TextInputType.text,
          text: 'Chronic Conditions',
          hintText: 'Diabetes',
        ),
        SizedBox(height: 24),

        // Ongoing Medications Field
        CustomTextFormField2(
          controller: Controller.ongoingMedicationsController,
          validator: (value) =>
              value!.isEmpty ? 'Please enter ongoing medications' : null,
          ispassword: false,
          textInputType: TextInputType.text,
          text: 'Ongoing Medications',
          hintText: 'Ex: Metformin',
        ),
      ],
    );
  }
}
