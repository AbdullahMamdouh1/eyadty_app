import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_text_field.dart';

class PatientController2 {
  final formKey = GlobalKey<FormState>();

  // Controllers لكل حقل
  final nameController = TextEditingController();
  final birthdayController = TextEditingController();
  final genderController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final allergiesController = TextEditingController();
  final surgeriesController = TextEditingController();
  final chronicConditionsController = TextEditingController();
  final ongoingMedicationsController = TextEditingController();
  final emergencyContactController = TextEditingController();
  final emergencyPhoneController = TextEditingController();
  final emergencyRelationController = TextEditingController();

  // متغير لتخزين حالة الـ CheckBox
  bool isChecked = false;

  Widget builEndField(dynamic Controller) {
    return CustomTextFormField2(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
      controller: Controller,
      ispassword: false,
      textInputType: TextInputType.text,
      text: '',
      hintText: 'End Hour',
    );
  }
}
