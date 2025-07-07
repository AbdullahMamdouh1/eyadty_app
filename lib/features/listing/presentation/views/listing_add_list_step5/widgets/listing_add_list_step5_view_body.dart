import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../widgets/listing_end_buttons.dart';
import '../../widgets/listing_steps_line.dart';
import '../../widgets/title_text.dart';
import 'basic_information.dart';
import 'clinic_operations_details.dart';
import 'doctor_information.dart';

class ListingAddListStep5ViewBody extends StatefulWidget {
  const ListingAddListStep5ViewBody({super.key});

  @override
  State<ListingAddListStep5ViewBody> createState() =>
      _ListingAddListStep5ViewBodyState();
}

class _ListingAddListStep5ViewBodyState
    extends State<ListingAddListStep5ViewBody> {
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
            color4: AppColors.greenColor,
            color5: AppColors.greenColor,
          ),
          TitleText(
            title: 'Step 5 of 5: Preview And Submit ',
            subTitle:
                "Review your clinic's details and uploads to ensure everything is accurate before submission.",
          ),
          sizedBox,
          CustomContainerShape(
            Child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BasicInformation(),
                  sizedBox,
                  ClinicOperationsDetails(),
                  sizedBox,
                  DoctorInformation(),
                  sizedBox,
                  Text(
                    "Multimedia Uploads",
                    style: AppStyles.bold18,
                  ),
                  sizedBox,
                  FittedBox(
                    alignment: AlignmentDirectional.centerStart,
                    fit: BoxFit.scaleDown,
                    child: Row(
                      children: [
                        Image(image: AssetImage(AppImages.imagesBody)),
                        SizedBox(
                          width: 8,
                        ),
                        Image(image: AssetImage(AppImages.imagesBody)),
                      ],
                    ),
                  ),
                  sizedBox,
                  ListingEndButtons(
                    onPressedButton1: () {},
                    onPressedButton2: () {
                      context.push(Routes.dialogPayment);
                    },
                    onPressedButtonSave: () {},
                    onPressedButtonBack: () {},
                    textButton1: '',
                    textButton2: 'Submit Your Listing',
                    imageButton1: AppImages.imagesUpload,
                    Visible: false,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
