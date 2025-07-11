import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_images.dart';
import '../../../core/utils/app_text_styles.dart';

class UpgradePremium extends StatelessWidget {
  const UpgradePremium({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 27),
            SvgPicture.asset(AppImages.imagesLogo2),
            SizedBox(width: 27),
            SvgPicture.asset(AppImages.imagesPayment),
          ],
        ),
        Text('Upgrade to Premium', style: AppStyles.bold18),
        SizedBox(height: 8),
        Text(
          'One Hub to your daily management tasks',
          style: AppStyles.medium16.copyWith(color: AppColors.greyColor),
        ),
      ],
    );
  }
}
