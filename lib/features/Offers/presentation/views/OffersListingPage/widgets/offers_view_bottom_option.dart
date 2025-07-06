import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../promotions/presentation/widgets/custom_bottom_option.dart';

class OffersViewBottomOption extends StatelessWidget {
  const OffersViewBottomOption(
      {super.key,
      this.imagePath = AppImages.imagesLocalOffer,
      this.text = 'Create New Offers',
      this.nextRoute = Routes.createOfferpageView});
  final String text;
  final String nextRoute;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      color: AppColors.white,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 6.h),
      child: CustomBottomOption(
        text: text,
        imagePath: imagePath,
        background: AppColors.greenColor,
        textColor: AppColors.white,
        borderColor: AppColors.black,
        onPressed: () {
          context.push(nextRoute);
        },
      ),
    );
  }
}
