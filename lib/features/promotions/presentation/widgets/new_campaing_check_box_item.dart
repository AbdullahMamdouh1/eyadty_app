import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/style/app_style.dart';

class NewCampaingCheckBoxItem extends StatefulWidget {
  const NewCampaingCheckBoxItem(
      {super.key, required this.text, required this.onTap});
  final String text;
  final VoidCallback onTap;

  @override
  State<NewCampaingCheckBoxItem> createState() =>
      _NewCampaingCheckBoxItemState();
}

class _NewCampaingCheckBoxItemState extends State<NewCampaingCheckBoxItem> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: checked,
          onChanged: (val) {
            checked = !checked;
            setState(() {});
            widget.onTap;
          },
          fillColor: checked
              ? WidgetStatePropertyAll(AppColors.greenlightColor)
              : null,
          hoverColor: AppColors.greenlightColor,
          focusColor: AppColors.white,
          activeColor: AppColors.greenlightColor,
          checkColor: AppColors.greenColor,
          side: BorderSide(
            color: AppColors.greenColor,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6.r),
          ),
        ),
        horizontalSpace(12),
        ConstrainedBox(
          constraints:
              BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width - 150),
          child: Text(
            widget.text,
            style: AppStyle.campaignItem,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
