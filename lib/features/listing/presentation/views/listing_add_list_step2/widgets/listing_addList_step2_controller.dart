import 'package:flutter/cupertino.dart';

import '../../../../../../core/widgets/custom_text_field.dart';

class ListingAddListStep2Controller {
  final ClinicFeesController = TextEditingController();
  final BankAccountController = TextEditingController();
  final IBANController = TextEditingController();
  final SundayStartController = TextEditingController();
  final MondayStartController = TextEditingController();
  final TuesdayStartController = TextEditingController();
  final WednesdayStartController = TextEditingController();
  final ThursdayStartController = TextEditingController();
  final FridayStartController = TextEditingController();
  final SaturdayStartController = TextEditingController();
  //////// end
  final SundayEndController = TextEditingController();
  final MondayEndController = TextEditingController();
  final TuesdayEndController = TextEditingController();
  final WednesdayEndController = TextEditingController();
  final ThursdayEndController = TextEditingController();
  final FridayEndController = TextEditingController();
  final SaturdayEndController = TextEditingController();

///////////
  final EmailController = TextEditingController();
  final PhoneNumberController = TextEditingController();
  final StreetController = TextEditingController();

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

  Widget builStartField(dynamic Controller, dynamic day) {
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
      text: day,
      hintText: 'Start Hour',
    );
  }
}
