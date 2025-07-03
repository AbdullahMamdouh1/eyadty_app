import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../core/widgets/custom_container_shape.dart';

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
                onTap: onPressed, child: SvgPicture.asset(AppImages.imagesEdit))
          ],
        ),
      ),
    );
  }
}

class Table2 {
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
                    "Date",
                    style: AppStyles.semiBold15,
                  ),
                  Text(
                    "Patient Name",
                    style: AppStyles.semiBold15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Type",
                        style: AppStyles.semiBold15,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      SvgPicture.asset(AppImages.imagesSort)
                    ],
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
    );
  }

  ////////////////////////////////  TableInformation

  TableInformation(
      {required String PatientName,
      required String Type,
      required String Date1,
      required dynamic ColorBool}) {
    return Container(
      color: ColorBool,
      height: 45,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(Date1,
                  style: AppStyles.regular15,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis),
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              child: Text(
                PatientName,
                style: AppStyles.regular15,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: 20),
            Flexible(
                child: Text(
              Type,
              style: AppStyles.regular15,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ))
          ],
        ),
      ),
    );
  }
}
