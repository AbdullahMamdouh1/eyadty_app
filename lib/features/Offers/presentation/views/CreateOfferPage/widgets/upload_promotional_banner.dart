import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;

import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_text_styles.dart';

class UploadPromotionalBanner extends StatelessWidget {
  const UploadPromotionalBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          "Upload Promotional Banner",
          style: AppStyles.regular15.copyWith(color: Color(0xff457261)),
        ),
        SizedBox(
          width: 8,
        ),
        SvgPicture.asset(
          AppImages.imagesUpload,
          color: Colors.green,
        )
      ],
    );
  }
}
