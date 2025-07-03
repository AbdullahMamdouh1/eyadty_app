import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/app_images.dart';
import '../../../core/widgets/custom_container_shape.dart';

class WhatIncluded extends StatelessWidget {
  const WhatIncluded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        color: Colors.white,
        child: CustomContainerShape(
            Child: Padding(
          padding:
              const EdgeInsets.only(right: 21.0, left: 21, bottom: 21, top: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What’s Included",
                style: AppStyles.bold18,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Appointment Management",
                    style: AppStyles.semiBold15,
                  ),
                ],
              ),
              sizedBox,
              Row(
                children: [
                  SvgPicture.asset(AppImages.imagesShoppingCart),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Patient Records Access",
                    style: AppStyles.semiBold15,
                  ),
                ],
              ),
              sizedBox,
              Row(
                children: [
                  SvgPicture.asset(AppImages.imagesCheckCircle),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Inventory Control",
                    style: AppStyles.semiBold15,
                  ),
                ],
              ),
              sizedBox,
              Row(
                children: [
                  SvgPicture.asset(AppImages.imagesSecurity),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Financial Tracking",
                    style: AppStyles.semiBold15,
                  ),
                ],
              ),
              sizedBox,
            ],
          ),
        )),
      ),
    );
  }
}
