import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/utils/app_images.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/custom_bottom_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreateOfferBottomOptions extends StatelessWidget {
  const CreateOfferBottomOptions({super.key, this.nextRoute});
  final String? nextRoute;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      color: AppColors.white,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
      child: Row(
        children: [
          Expanded(
            child: CustomBottomOption(
              text: 'Save Draft',
              imagePath: AppImages.save2,
              background: AppColors.white,
              textColor: AppColors.black,
              onPressed: () {
                // context.push(Routes.campaignHistory);
              },
            ),
          ),
          horizontalSpace(12),
          Expanded(
            child: CustomBottomOption(
              text: 'Submit',
              imagePath: AppImages.imagesArrowForward,
              background: AppColors.greenColor,
              textColor: AppColors.white,
              borderColor: AppColors.black,
              onPressed: () {
                if (nextRoute != null) context.push(nextRoute!);
              },
            ),
          ),
        ],
      ),
    );
  }
}
