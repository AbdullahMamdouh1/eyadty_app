import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../generated/assets.dart';

class ActiveBox extends StatelessWidget {
  const ActiveBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340,
      height: 270,
      decoration: BoxDecoration(
          color: Color(0xFFF5F5F5),
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 35,
                  width: 90,
                  child: CustomButton(
                      onPressed: () {},
                      text: "Active",
                      image: Assets.imagesTrue,
                      color: Colors.green),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(Assets.imagesPerson),
                      radius: 25,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Johne Doe",
                      style: AppStyles.bold18,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "null",
                      style: AppStyles.medium16
                          .copyWith(color: AppColors.greyColor),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "example@example.com",
                  style: AppStyles.regular15.copyWith(color: Color(0xFF245266)),
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
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "+20 888 888 8888",
                  style: AppStyles.regular15.copyWith(color: Color(0xFF245266)),
                )
              ],
            ),
            SizedBox(
              height: 26,
            ),
            Row(
              children: [
                Icon(
                  Icons.edit_outlined,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "You Can’t Edit Your Roles",
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
