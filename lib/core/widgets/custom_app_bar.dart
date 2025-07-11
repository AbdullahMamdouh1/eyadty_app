import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_images.dart';
import 'custom_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24, top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(AppImages.imagesLogo),
                    SvgPicture.asset(AppImages.imagesStar),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: SvgPicture.asset(AppImages.imagesStar)),
                    SizedBox(
                      width: 16,
                    ),
                    CustomSearch()
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Divider()
        ],
      ),
    );
  }
}
