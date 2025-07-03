import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/new_campaign_item.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/shared_child_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'new_campaign_item_container.dart';

class NewCampaingStep3Column extends StatelessWidget {
  const NewCampaingStep3Column({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedChildContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step 3 - Offer Details',
            style: AppStyle.campaignSteps,
          ),
          verticalSpace(24),
          NewCampaignItem(
            title: 'Offer Type',
            child: NewCampaignItemContainer(
              text: "Flat Discount",
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
            title: 'Offer Amount',
            child: NewCampaignItemContainer(
              text: "100 Egp",
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
            title: 'Diagnostic Rate',
            child: NewCampaignItemContainer(
              text: "Service Provided",
              suffix: Transform.rotate(
                angle: 4.7,
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 16.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
