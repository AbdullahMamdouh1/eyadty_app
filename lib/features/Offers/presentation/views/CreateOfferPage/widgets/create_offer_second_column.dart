import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/style/app_style.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../promotions/presentation/widgets/new_campaign_item.dart';
import '../../../../../promotions/presentation/widgets/new_campaign_item_container.dart';

class CreateOfferSecondColumn extends StatelessWidget {
  const CreateOfferSecondColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Offer Validity",
          style: AppStyle.campaignSteps,
        ),
        sizedBox,
        NewCampaignItemContainer(
          text: "Start Date",
          suffix: Transform.rotate(
            angle: 4.7,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 16.sp,
            ),
          ),
        ),
        sizedBox,
        NewCampaignItemContainer(
          text: "End Date",
          suffix: Transform.rotate(
            angle: 4.7,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 16.sp,
            ),
          ),
        ),
        sizedBox,
        NewCampaignItemContainer(
          text: "Offer Availability",
          suffix: Transform.rotate(
            angle: 4.7,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 16.sp,
            ),
          ),
        ),
        sizedBox,
        Text(
          "Additional Options",
          style: AppStyle.campaignSteps,
        ),
        sizedBox,
        NewCampaignItem(
          title: 'Terms and Conditions',
          child: NewCampaignItemContainer(
            text: "Enter any restrictions or terms...',",
            maxLines: 3,
            suffix: Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: Transform.scale(
                scale: 1.5,
                child: Transform.translate(
                  offset: const Offset(0, 0),
                  child: SvgPicture.asset(
                    AppImages.drag,
                    height: 24.h,
                    width: 24.w,
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
