import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/core/utils/app_images.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/new_campaign_item.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/new_campaing_check_box_item.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/shared_child_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'new_campaign_item_container.dart';

class NewCampaingStep4Column extends StatelessWidget {
  const NewCampaingStep4Column({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedChildContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step 4 - Compose Message',
            style: AppStyle.campaignSteps,
            maxLines: 3,
          ),
          verticalSpace(24),
          NewCampaignItem(
            title: 'Campaign Message',
            child: NewCampaignItemContainer(
              text: "Eg., New Year's Offer",
              maxLines: 3,
              suffix: Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: Transform.scale(
                  scale: 1.5,
                  child: Transform.translate(
                    offset: const Offset(0, 3),
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
          verticalSpace(24),
          NewCampaignItem(
            title: 'Multimedia',
            child: NewCampaignItemContainer(
              maxLines: 3,
              text: "Add Campaign Multimedia",
              suffix: Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: Transform.scale(
                  scale: 1.5,
                  child: Transform.translate(
                    offset: const Offset(0, 3),
                    child: SvgPicture.asset(
                      AppImages.drag,
                      height: 44.h,
                      width: 44.w,
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
            ),
          ),
          verticalSpace(24),
          NewCampaingCheckBoxItem(
            text: 'Send WhatsApp Message to Target Audience',
            onTap: () {},
          ),
          verticalSpace(67),
          NewCampaingCheckBoxItem(
            text: 'Send Push Notification to Target Audience',
            onTap: () {},
          ),
          verticalSpace(67),
          NewCampaingCheckBoxItem(
            text: 'Send WhatsApp Message to Target Audience',
            onTap: () {},
          )
        ],
      ),
    );
  }
}
