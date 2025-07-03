import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/widgets/custom_container_shape.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_text_field.dart';
import '../../../../../auth/presentation/views/widgets/step_text.dart';
import '../../../../../listing/presentation/views/widgets/title_text.dart';

class AddNewEmployeePageViewBody extends StatelessWidget {
  const AddNewEmployeePageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 32,
          ),
          TitleText(
            Title: "Add New Employee",
            SubTitle:
                "Invite a collaborator to your clinic and assign their role.",
          ),
          SizedBox(
            height: 30,
          ),
          CustomContainerShape(
              Child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StepText(
                  Title: 'Employee Information',
                  SubTitle: "Set Employees Primary Information",
                ),
                sizedBox,
                CustomTextFormField2(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  ispassword: true,
                  textInputType: TextInputType.text,
                  text: 'Employee Full Name',
                  hintText: 'John Doe',
                ),
                sizedBox,
                CustomTextFormField2(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  ispassword: true,
                  textInputType: TextInputType.text,
                  text: 'Employee Email',
                  hintText: 'example@example.com',
                ),
                sizedBox,
                CustomTextFormField2(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  ispassword: true,
                  textInputType: TextInputType.text,
                  text: 'Employee Phone Number',
                  hintText: '+20 888 888 8888',
                ),
                sizedBox,
                CustomTextFormField2(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  ispassword: true,
                  textInputType: TextInputType.text,
                  text: 'Employee Primary Role',
                  hintText: 'Select Role',
                ),
                sizedBox,
                CustomButton(
                  onPressed: () {
                    context.push(Routes.employeeAddedSuccessfully);
                  },
                  text: 'Send Invitation',
                  image: AppImages.imagesSend2,
                  color: AppColors.greenColor,
                ),
              ],
            ),
          )),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
