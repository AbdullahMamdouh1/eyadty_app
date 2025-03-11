import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../../core/widgets/custom_text_field.dart';
import '../../../../../../generated/assets.dart';
import '../../widgets/listing_end_buttons.dart';
import '../../widgets/listing_steps_line.dart';
import '../../widgets/title_text.dart';

class ListingAddListStep1ViewBody extends StatefulWidget {
  const ListingAddListStep1ViewBody({super.key});

  @override
  State<ListingAddListStep1ViewBody> createState() =>
      _ListingAddListStep1ViewBodyState();
}

class _ListingAddListStep1ViewBodyState
    extends State<ListingAddListStep1ViewBody> {
  final formKey = GlobalKey<FormState>();
  final NameController = TextEditingController();
  final PhoneController = TextEditingController();
  final EmailController = TextEditingController();
  final AddressController = TextEditingController();
  final ApartmentController = TextEditingController();
  final StateController = TextEditingController();
  final CityController = TextEditingController();
  final PostalController = TextEditingController();
  final CountryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          ListingStepsLine(
            color1: AppColors.greenColor,
          ),
          TitleText(
            Title: 'Step 1 of 5: Basic Information',
            SubTitle: 'Enter clinic name, address, and contact details.',
          ),
          SizedBox(
            height: 24,
          ),
          CustomContainerShape(
            Child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /////////////////////1
                      CustomTextFormField2(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: NameController,
                        ispassword: false,
                        textInputType: TextInputType.text,
                        text: 'Clinic Name',
                        hintText: 'John Doe’s Clinic',
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      /////////////////////2
                      CustomTextFormField2(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: PhoneController,
                        ispassword: false,
                        textInputType: TextInputType.text,
                        text: 'Phone Number',
                        hintText: '+20 100 000 0000',
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      ///////////////////3
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
                        text: 'Email Address',
                        hintText: 'info@myclinic.com',
                      ),

                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Clinic Address",
                        style: AppStyles.bold18,
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      /////////////////////4
                      CustomTextFormField2(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: AddressController,
                        ispassword: false,
                        textInputType: TextInputType.text,
                        text: 'Address Line 1	',
                        hintText: '123 Main Street',
                      ),
                      SizedBox(
                        height: 24,
                      ),

                      /////////////////////////5
                      CustomTextFormField2(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: CountryController,
                        ispassword: false,
                        textInputType: TextInputType.text,
                        text: 'Apartment, Suite, etc.',
                        hintText: '123 Main Street',
                      ),
                      SizedBox(
                        height: 24,
                      ),

                      /////////////////////////6
                      CustomTextFormField2(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: ApartmentController,
                        ispassword: false,
                        textInputType: TextInputType.text,
                        text: 'State/Province',
                        hintText: 'Cairo',
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      //////////////////////////7
                      CustomTextFormField2(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: StateController,
                        ispassword: false,
                        textInputType: TextInputType.text,
                        text: 'City',
                        hintText: 'Heleopolis',
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      ////////////////////////8
                      CustomTextFormField2(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: CityController,
                        ispassword: false,
                        textInputType: TextInputType.text,
                        text: 'Postal Code',
                        hintText: '11511',
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      ////////////////////////////9
                      CustomTextFormField2(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: PostalController,
                        ispassword: false,
                        textInputType: TextInputType.text,
                        text: 'Country',
                        hintText: 'Egypt',
                      ),
                      SizedBox(
                        height: 24,
                      ),

                      ListingEndButtons(
                        onPressedButton1: () {},
                        onPressedButton2: () {},
                        onPressedButtonSave: () {},
                        onPressedButtonBack: () {},
                        textButton1: 'Pin Location on Map',
                        textButton2: 'Add Operational Information',
                        imageButton1: Assets.imagesAddLocationAlt,
                        Visible: true,
                      )
                    ],
                  )),
            ),
            Height: 1270,
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
