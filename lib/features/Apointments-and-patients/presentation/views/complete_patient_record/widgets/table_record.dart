import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../../generated/assets.dart';

class TableRecord {
  TableShape({required Child, required double height}) {
    return CustomContainerShape(
      Child: Column(
        children: [
          Container(
            color: Color(0xFFD8F0E7),
            height: 45,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Date",
                        style: AppStyles.semiBold15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset(Assets.imagesSort)
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Type",
                        style: AppStyles.semiBold15,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      SvgPicture.asset(Assets.imagesSort)
                    ],
                  ),
                  SvgPicture.asset(Assets.imagesMoreVert)
                ],
              ),
            ),
          ),
          Divider(
            color: AppColors.greenColor,
            thickness: 2.5,
            height: 0,
          ),
          SizedBox(
            height: 8,
          ),
          Child,
        ],
      ),
     );
  }

  ////////////////////////////////  TableInformation

  TableInformation(
      {required bool ColorBool,
      required VoidCallback onPressed,
      required String Type,
      required String Date}) {
    return Container(
      color: ColorBool ? Color(0xFFF5F5F5) : Colors.white,
      height: 45,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Date,
              style: AppStyles.regular15,
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              child: Text(
                Type,
                style: AppStyles.regular15,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: 20),
            GestureDetector(
                onTap: onPressed,
                child: SvgPicture.asset(Assets.imagesMoreVert))
          ],
        ),
      ),
    );
  }
}
