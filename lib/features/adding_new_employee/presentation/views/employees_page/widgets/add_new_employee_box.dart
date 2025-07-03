import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_text_styles.dart';

class AddNewEmployeeBox extends StatelessWidget {
  const AddNewEmployeeBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 270,
      decoration: BoxDecoration(
          color: Color(0xFFD9D9D9), borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 16),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: AppColors.greenColor,
                  radius: 25,
                  child: SvgPicture.asset(
                    AppImages.imagesStar,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Add New Employee",
                  style: AppStyles.bold18,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Select Role",
                  style:
                      AppStyles.medium16.copyWith(color: AppColors.greyColor),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  color: Color(0xFFB3B3B3),
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "example@example.com",
                  style: AppStyles.regular15.copyWith(color: Color(0xFFB3B3B3)),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Icon(
                  Icons.call_outlined,
                  color: Color(0xFFB3B3B3),
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "+20 888 888 8888",
                  style: AppStyles.regular15.copyWith(color: Color(0xFFB3B3B3)),
                )
              ],
            ),
            SizedBox(
              height: 26,
            ),
            Row(
              children: [
                Icon(
                  Icons.error_outline,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "Add User to Assign A Role",
                  style: AppStyles.regular15.copyWith(color: Color(0xFF3C4553)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
