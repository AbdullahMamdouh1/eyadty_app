import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/new_campaign_item.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/new_campaign_switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'new_campaign_item_container.dart';

class NewCampaingStep1Column extends StatelessWidget {
  const NewCampaingStep1Column({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step 1 - Campaign Basics',
            style: AppStyle.campaignSteps,
          ),
          verticalSpace(24),
          NewCampaignItem(
            title: 'Campaign Name',
            child: NewCampaignItemContainer(
              text: "Eg., New Year's Offer",
            ),
          ),
          verticalSpace(24),
          NewCampaignItem(
            title: 'Campaign Type',
            child: NewCampaignItemContainer(
              text: "Push Notification",
              suffix: Transform.rotate(
                angle: 4.7,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 16.sp,
                ),
              ),
            ),
          ),
          verticalSpace(24),
          NewCampaignSwitchWidget(
            title: 'Has Promo',
          ),
          verticalSpace(24),
          NewCampaignItem(
            title: 'Promo Code',
            child: NewCampaignItemContainer(
              enabled: false,
              text: "Eg., New Patient-100",
            ),
          ),
          verticalSpace(24),
          NewCampaignItem(
            title: 'End Date',
            child: NewCampaignItemContainer(
              text: "MM/DD/YYYY",
            ),
          ),
          verticalSpace(24),
          NewCampaignItem(
            title: 'Start Date',
            child: NewCampaignItemContainer(
              text: "MM/DD/YYYY",
            ),
          ),
        ],
      ),
    );
  }
}
