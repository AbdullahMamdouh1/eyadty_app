import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../promotions/presentation/widgets/new_campaign_item.dart';
import '../../../promotions/presentation/widgets/new_campaign_item_container.dart';

class AddItemSecondColumn extends StatelessWidget {
  const AddItemSecondColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NewCampaignItem(
          title: 'price',
          child: NewCampaignItemContainer(
            text: "2,000 EGP",
          ),
        ),
        sizedBox,
        NewCampaignItem(
          title: 'quantity',
          child: NewCampaignItemContainer(
            text: "20",
          ),
        ),
        sizedBox,
        NewCampaignItem(
          title: 'Supplier',
          child: NewCampaignItemContainer(
            text: "Ex: Eyadti",
          ),
        ),
        sizedBox,
        NewCampaignItem(
          title: 'Stock Threshold',
          child: NewCampaignItemContainer(
            text: "5",
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
    );
  }
}
