import 'package:eyadty_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../generated/assets.dart';

class RowButtonScreen extends StatelessWidget {
  const RowButtonScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Employees",
          style: AppStyles.bold24,
        ),
        SizedBox(
          width: 20,
        ),
        SizedBox(
            width: 189,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: CustomButton(
                  onPressed: () {},
                  text: "Add New Employee",
                  image: Assets.imagesAdd,
                  color: AppColors.greenColor),
            ))
      ],
    );
  }
}
