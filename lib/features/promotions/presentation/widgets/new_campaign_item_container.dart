import 'package:eyadty_app/core/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewCampaignItemContainer extends StatelessWidget {
  const NewCampaignItemContainer(
      {super.key, required this.text, this.suffix, this.enabled = true});
  final String text;
  final Widget? suffix;
  final bool enabled;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      decoration: InputDecoration(
        hint: Text(
          text,
          style: AppStyle.campaignContainer,
        ),
        suffixIcon: suffix,
        contentPadding:
            EdgeInsets.only(left: 12.w, right: 8.w, top: 12.h, bottom: 12.h),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.grey.shade700),
        ),
      ),
      style: AppStyle.campaignContainer,
    );
  }
}
