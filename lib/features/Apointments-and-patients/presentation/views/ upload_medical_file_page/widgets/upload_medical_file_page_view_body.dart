import 'package:eyadty_app/core/helper_functions/on_generate_routes.dart';
import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/widgets/custom_button.dart';
import 'package:eyadty_app/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../../generated/assets.dart';
import '../../../../../listing/presentation/views/widgets/title_text.dart';
import 'emergency_contact2.dart';
import 'medical_history2.dart';
import 'patient_controller2.dart';
import 'patient_information2.dart';

class  UploadMedicalFilePageViewBody extends StatefulWidget {
  UploadMedicalFilePageViewBody({super.key});

  @override
  State<UploadMedicalFilePageViewBody> createState() => _UploadMedicalFilePageViewBodyState();
}

class _UploadMedicalFilePageViewBodyState extends State<UploadMedicalFilePageViewBody> {
  final Controller = PatientController2();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 32),
          TitleText(
            Title: 'Add New Patient',
            SubTitle:
                'Create a new patient record and invite them to access their medical history online.',
          ),
          SizedBox(height: 24),
          Directionality(
            textDirection: TextDirection.rtl,
            child: CustomButton(
              onPressed: () {},
              Width: 190,
              text: "Add New Patient",
              color: AppColors.greenColor,
              image: Assets.imagesAdd,
            ),
          ),
          SizedBox(height: 32),
          CustomContainerShape(
            Child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                key: Controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PatientInformation2(),
                    SizedBox(height: 24),
                    MedicalHistory2(),
                    SizedBox(height: 24),
                    EmergencyContact2(),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        CustomCheckBox(
                          isChecked: Controller.isChecked,
                          onChecked: (bool value) {
                            setState(() {
                              Controller.isChecked = value;
                            });
                          },
                        ),
                        SizedBox(width: 12),
                        Text("Send Invitation to \nCreate Patient Account"),
                      ],
                    ),
                    SizedBox(height: 16),
                    CustomButton(
                      onPressed: () {
                        context.push(AppRoutes.completePatientRecordView);
                      },
                      text: "Save Changes",
                      Width: 170,
                      color: AppColors.greenColor,
                      image: Assets.imagesSave,
                    ),
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
