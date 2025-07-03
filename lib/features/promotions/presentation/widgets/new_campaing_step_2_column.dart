import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/new_campaign_item.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/new_campaign_switch_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'new_campaign_item_container.dart';

class NewCampaingStep2Column extends StatelessWidget {
  const NewCampaingStep2Column({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step 2 - Target Audience',
            style: AppStyle.campaignSteps,
          ),
          verticalSpace(24),
          NewCampaignSwitchWidget(
            title: 'All Patients',
          ),
          Spacer(),
          NewCampaignItem(
            title: 'Target Patients',
            child: NewCampaignItemContainer(
              text: "New Patients",
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
          NewCampaignItem(
            title: 'Add Specifications',
            child: NewCampaignItemContainer(
              text: "First Time Order",
              suffix: Transform.rotate(
                angle: 4.7,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 16.sp,
                ),
              ),
            ),
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
