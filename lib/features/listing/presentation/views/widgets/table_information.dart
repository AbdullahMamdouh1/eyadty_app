import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../generated/assets.dart';

class Table1 {
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
                  Text(
                    "Field",
                    style: AppStyles.semiBold15,
                  ),
                  Text(
                    "Details",
                    style: AppStyles.semiBold15,
                  ),
                  Text(
                    "",
                    style: AppStyles.semiBold15,
                  ),
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
      Height: height,
    );
  }

  ////////////////////////////////  TableInformation

  TableInformation(
      {required bool ColorBool,
      required VoidCallback onPressed,
      required String Details,
      required String FieldName}) {
    return Container(
      color: ColorBool ? Color(0xFFF5F5F5) : Colors.white,
      height: 45,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              FieldName,
              style: AppStyles.regular15,
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              child: Text(
                Details,
                style: AppStyles.regular15,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: 20),
            GestureDetector(
                onTap: onPressed, child: SvgPicture.asset(Assets.imagesEdit))
          ],
        ),
      ),
    );
  }
}
