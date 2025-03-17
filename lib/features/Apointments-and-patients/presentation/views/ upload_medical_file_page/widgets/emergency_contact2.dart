import 'package:eyadty_app/features/Apointments-and-patients/presentation/views/add_new_patient_page/widgets/patient_controller.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_text_field.dart';

class EmergencyContact2 extends StatelessWidget {
  const EmergencyContact2({super.key});

  @override
  Widget build(BuildContext context) {
    final Controller = PatientController();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Emergency Contact", style: AppStyles.bold18),
        SizedBox(height: 24),

        // Emergency Contact Field
        CustomTextFormField2(
          controller: Controller.emergencyContactController,
          validator: (value) =>
              value!.isEmpty ? 'Please enter emergency contact' : null,
          ispassword: false,
          textInputType: TextInputType.text,
          text: 'Emergency Contact',
          hintText: 'John Doe',
        ),
        SizedBox(height: 24),

        // Emergency Phone Number Field
        CustomTextFormField2(
          controller: Controller.emergencyPhoneController,
          validator: (value) =>
              value!.isEmpty ? 'Please enter emergency phone number' : null,
          ispassword: false,
          textInputType: TextInputType.phone,
          text: 'Emergency Phone Number',
          hintText: '+20 100 000 0000',
        ),
        SizedBox(height: 24),

        // Emergency Relation Field
        CustomTextFormField2(
          controller: Controller.emergencyRelationController,
          validator: (value) => value!.isEmpty ? 'Please enter relation' : null,
          ispassword: false,
          textInputType: TextInputType.text,
          text: 'Emergency Relation',
          hintText: 'Husband, Son, Daughter...',
        ),
      ],
    );
  }
}
