import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/utils/app_text_styles.dart';
import 'package:eyadty_app/core/widgets/custom_button.dart';
import 'package:eyadty_app/core/widgets/custom_container_shape.dart';
import 'package:eyadty_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/widgets/CustomTextFormFieldHeight.dart';
import '../../../../../listing/presentation/views/widgets/listing_end_buttons.dart';
import '../../../../../listing/presentation/views/widgets/title_text.dart';

class CreateOfferpageViewBody extends StatelessWidget {
  const CreateOfferpageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 32,
          ),
          TitleText(
            Title: 'Create a New Offer',
            SubTitle:
                'Fill in the details to create a promotion and attract more patients to your clinic.',
          ),
          sizedBox,
          Directionality(
              textDirection: TextDirection.rtl,
              child: CustomButton(
                onPressed: () {},
                text: "Create New Offer",
                Width: 190,
                color: AppColors.greenColor,
                image: AppImages.imagesLocalOffer,
              )),
          sizedBox,
          CustomContainerShape(
            Child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Offer Details",
                    style: AppStyles.bold18,
                  ),
                  sizedBox,
                  CustomTextFormField2(
                      textInputType: TextInputType.name,
                      ispassword: false,
                      text: "Promotion Title",
                      hintText: "10% Off for First-Time Patients"),
                  sizedBox,
                  CustomTextFormField2(
                      textInputType: TextInputType.name,
                      ispassword: false,
                      text: "Applicable Clinics",
                      hintText: "Select clinics"),
                  sizedBox,
                  Customtextformfieldheight(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    text: 'Description',
                    hintText: 'Describe your promotion here...',
                  ),
                  sizedBox,
                  Text(
                    "Offer Validity",
                    style: AppStyles.bold18,
                  ),
                  CustomTextFormField2(
                      textInputType: TextInputType.name,
                      ispassword: false,
                      text: "",
                      hintText: "Start Date"),
                  CustomTextFormField2(
                      textInputType: TextInputType.name,
                      ispassword: false,
                      text: "",
                      hintText: "End Date"),
                  CustomTextFormField2(
                      textInputType: TextInputType.name,
                      ispassword: false,
                      text: "",
                      hintText: "Offer Availability"),
                  sizedBox,
                  Text(
                    "Additional Options",
                    style: AppStyles.bold18,
                  ),
                  sizedBox,
                  Customtextformfieldheight(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    text: 'Terms and Conditions',
                    hintText: 'Enter any restrictions or terms...',
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Upload Promotional Banner",
                        style: AppStyles.regular15,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      SvgPicture.asset(
                        AppImages.imagesUpload,
                        color: Colors.green,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ListingEndButtons(
                    onPressedButton1: () {},
                    onPressedButton2: () {},
                    onPressedButtonSave: () {},
                    onPressedButtonBack: () {},
                    textButton1: '',
                    textButton2: 'Submit',
                    imageButton1: AppImages.imagesUpload,
                    Visible: false,
                  )
                ],
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
