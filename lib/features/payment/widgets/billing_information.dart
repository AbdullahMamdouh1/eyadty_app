import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/utils/app_text_styles.dart';
import 'package:eyadty_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/custom_container_shape.dart';
import '../../../core/widgets/custom_text_field.dart';

class BillingInformation extends StatelessWidget {
  const BillingInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: CustomContainerShape(
            Child: Padding(
          padding:
              const EdgeInsets.only(right: 21.0, left: 21, bottom: 21, top: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Billing Information",
                style: AppStyles.bold18.copyWith(color: Colors.green),
              ),
              sizedBox,
              CustomTextFormField2(
                  textInputType: TextInputType.name,
                  ispassword: false,
                  text: "Full Name",
                  hintText: "Johne Doe"),
              sizedBox,
              CustomTextFormField2(
                  textInputType: TextInputType.name,
                  ispassword: false,
                  text: "Email",
                  hintText: "example@example.com"),
              sizedBox,
              CustomTextFormField2(
                  textInputType: TextInputType.name,
                  ispassword: false,
                  text: "Phone Number",
                  hintText: "+20 888 888 8888"),
              sizedBox,
              CustomTextFormField2(
                  textInputType: TextInputType.name,
                  ispassword: false,
                  text: "Business City",
                  hintText: "Select City"),
              sizedBox,
              CustomTextFormField2(
                  textInputType: TextInputType.name,
                  ispassword: false,
                  text: "Business Address 1",
                  hintText: "Appartment, Building, Street"),
              sizedBox,
              CustomTextFormField2(
                  textInputType: TextInputType.name,
                  ispassword: false,
                  text: "Business Address 2",
                  hintText: "Landmark, Town, Neighborhood"),
              SizedBox(
                height: 30,
              ),
              CustomButton2(
                  onPressed: () {},
                  text: "Pay Now",
                  color: AppColors.greenColor)
            ],
          ),
        )),
      ),
    );
  }
}
