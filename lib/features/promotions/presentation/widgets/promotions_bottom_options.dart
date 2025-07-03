import 'package:eyadty_app/core/routing/routes.dart';
import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/utils/app_images.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/custom_bottom_option.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PromotionsBottomOptions extends StatelessWidget {
  const PromotionsBottomOptions({super.key});

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
              text: 'Campaign History',
              imagePath: AppImages.history,
              background: AppColors.white,
              textColor: AppColors.black,
              onPressed: () {},
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: CustomBottomOption(
              text: 'New Campaign',
              imagePath: AppImages.campaign,
              background: AppColors.greenColor,
              textColor: AppColors.white,
              borderColor: AppColors.black,
              onPressed: () {
                context.push(Routes.newCampaign1);
              },
            ),
          ),
        ],
      ),
    );
  }
}
