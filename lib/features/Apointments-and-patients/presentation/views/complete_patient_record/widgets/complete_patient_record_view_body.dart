import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/widgets/custom_button.dart';
import 'package:eyadty_app/features/auth/presentation/views/widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../listing/presentation/views/widgets/title_text.dart';
import 'custom_table_record2.dart';
import 'emergency_contact3.dart';
import 'list_view_item_record2.dart';
import 'medical_history3.dart';
import 'patient_controller3.dart';
import 'patient_information3.dart';
import 'uploaded_medical_records.dart';

class CompletePatientRecordViewBody extends StatefulWidget {
  const CompletePatientRecordViewBody({super.key});

  @override
  State<CompletePatientRecordViewBody> createState() =>
      _CompletePatientRecordViewBodyState();
}

class _CompletePatientRecordViewBodyState
    extends State<CompletePatientRecordViewBody> {
  final Controller = PatientController3();
  final table = CustomTableRecord2();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 32),
          TitleText(
            Title: 'Complete Patient Record',
            SubTitle:
                'No medical record uploaded. Add details and files to complete the profile.',
          ),
          SizedBox(height: 24),
          Directionality(
            textDirection: TextDirection.rtl,
            child: CustomButton(
              onPressed: () {},
              Width: 190,
              text: "Log Patient Visit",
              color: AppColors.greenColor,
              image: AppImages.imagesAdd,
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
                    PatientInformation3(),
                    SizedBox(height: 24),
                    MedicalHistory3(),
                    SizedBox(height: 24),
                    EmergencyContact3(),
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
                      onPressed: () {},
                      text: "Save Changes",
                      Width: 170,
                      color: AppColors.greenColor,
                      image: AppImages.imagesSave,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 30,
          ),
          CustomContainerShape(
            Child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UploadedMedicalRecords(),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Past Appointments",
                    style: AppStyles.bold18,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  table.TableShape(Child: ListViewItemRecord2(), height: 400),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }
}
