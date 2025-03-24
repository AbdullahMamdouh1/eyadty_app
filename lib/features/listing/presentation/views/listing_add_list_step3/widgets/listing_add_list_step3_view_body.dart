 import 'package:eyadty_app/core/helper_functions/on_generate_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/widgets/CustomTextFormFieldHeight.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../../core/widgets/custom_text_field.dart';
import '../../../../../../generated/assets.dart';
import '../../widgets/listing_end_buttons.dart';
import '../../widgets/listing_steps_line.dart';
import '../../widgets/title_text.dart';

class ListingAddListStep3ViewBody extends StatefulWidget {
  const ListingAddListStep3ViewBody({super.key});

  @override
  State<ListingAddListStep3ViewBody> createState() =>
      _ListingAddListStep3ViewBodyState();
}

class _ListingAddListStep3ViewBodyState
    extends State<ListingAddListStep3ViewBody> {
  final formKey = GlobalKey<FormState>();
  final Controller = TextEditingController();
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
            color2: AppColors.greenColor,
            color3: AppColors.greenColor,
          ),
          TitleText(
            Title: 'Step 3 of 5: Doctor Information',
            SubTitle: 'Enter your name, specialty, and professional details.',
          ),
          sizedBox,
          CustomContainerShape(
            Child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CustomTextFormField2(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      controller: Controller,
                      ispassword: false,
                      textInputType: TextInputType.text,
                      text: 'Full Name',
                      hintText: 'Dr. John Doe',
                    ),
                    sizedBox,
                    CustomTextFormField2(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      controller: Controller,
                      ispassword: false,
                      textInputType: TextInputType.text,
                      text: 'Sub-Specialty',
                      hintText: 'Orthodontist',
                    ),
                    sizedBox,
                    CustomTextFormField2(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      controller: Controller,
                      ispassword: false,
                      textInputType: TextInputType.text,
                      text: 'License Number	',
                      hintText: '2345-67890',
                    ),
                    sizedBox,
                    CustomTextFormField2(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      controller: Controller,
                      ispassword: false,
                      textInputType: TextInputType.text,
                      text: 'Graduation Year',
                      hintText: '1980',
                    ),
                    sizedBox,
                    CustomTextFormField2(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      controller: Controller,
                      ispassword: false,
                      textInputType: TextInputType.text,
                      text: 'Graduation University',
                      hintText: 'Cairo University',
                    ),
                    sizedBox,
                    CustomTextFormField2(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      controller: Controller,
                      ispassword: false,
                      textInputType: TextInputType.text,
                      text: 'Other Certificates',
                      hintText: 'Cairo University',
                    ),
                    sizedBox,
                    Customtextformfieldheight(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                      controller: Controller,
                       text: 'Professional Summary	',
                      hintText: 'Briefly describe your expertise.',
                    ),
                    sizedBox,
                    ListingEndButtons(
                      onPressedButton1: () {},
                      onPressedButton2: () {
                        context.push(AppRoutes.listingAddListStep4View);
                      },
                      onPressedButtonSave: () {},
                      onPressedButtonBack: () {
                        context.pop();
                      },
                      textButton1: 'Upload Your Image',
                      textButton2: 'Upload Multimedia',
                      imageButton1: Assets.imagesUpload,
                      Visible: true,
                    )
                  ],
                ),
              ),
            ),
           ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
