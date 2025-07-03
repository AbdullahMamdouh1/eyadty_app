import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../../core/widgets/fitted_box.dart';
import '../../../../../listing/presentation/views/widgets/listing_end_buttons.dart';
import '../../../../../listing/presentation/views/widgets/title_text.dart';
import 'basic_information.dart';
import 'clinic_operations_details.dart';
import 'doctor_information.dart';

class ClinicListingPageViewBody extends StatefulWidget {
  const ClinicListingPageViewBody({super.key});

  @override
  State<ClinicListingPageViewBody> createState() =>
      _ClinicListingPageViewBodyState();
}

class _ClinicListingPageViewBodyState extends State<ClinicListingPageViewBody> {
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
            Title: "Manage [John Doe’s] Clinic",
            SubTitle: "Preview And Edit Clinic Details",
          ),
          SizedBox(
              width: 110,
              child: CustomButton3(
                onPressed: () {},
                text: 'Active Listing',
                color: Color(0xFFCFF7D3),
                ColorText: AppColors.greenColor,
              )),
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
                  FittedBoxS(
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
                      context.push(Routes.offersListingPageView);
                    },
                    onPressedButtonSave: () {},
                    onPressedButtonBack: () {},
                    textButton1: '',
                    textButton2: 'Submit ',
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
