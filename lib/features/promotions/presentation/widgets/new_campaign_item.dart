import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';

class NewCampaignItem extends StatelessWidget {
  const NewCampaignItem({super.key, required this.title, required this.child});
  final String title;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyle.campaignItem,
        ),
        verticalSpace(8),
        child
      ],
    );
  }
}
