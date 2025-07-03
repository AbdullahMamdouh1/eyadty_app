import 'package:eyadty_app/core/style/app_style.dart';
import 'package:flutter/material.dart';

class NewCampaignSwitchWidget extends StatelessWidget {
  const NewCampaignSwitchWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppStyle.campaignItem,
        ),
        Spacer(),
        //switch widget here
      ],
    );
  }
}
