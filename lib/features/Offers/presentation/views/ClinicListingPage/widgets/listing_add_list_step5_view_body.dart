import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/style/app_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/fitted_box.dart';
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
      padding: EdgeInsets.only(right: 20.0.w, left: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(32),
          Row(
            children: [
              Text(
                "Manage [John Doe’s] Clinic",
                style: AppStyle.bold18
                    .copyWith(fontSize: 16.sp, color: Color(0xff1E1E1E)),
              ),
              Spacer(),
              SizedBox(
                  width: 105.w,
                  child: CustomButton3(
                    onPressed: () {},
                    text: 'Active Listing',
                    color: Color(0xFFCFF7D3),
                    ColorText: AppColors.darkGreen,
                  )),
            ],
          ),
          verticalSpace(40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
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
                      horizontalSpace(8),
                      Image(image: AssetImage(AppImages.imagesBody)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          verticalSpace(60)
        ],
      ),
    );
  }
}
