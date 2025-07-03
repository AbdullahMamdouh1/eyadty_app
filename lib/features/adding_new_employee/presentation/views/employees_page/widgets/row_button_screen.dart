import 'package:eyadty_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/fitted_box.dart';

class RowButtonScreen extends StatelessWidget {
  const RowButtonScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBoxS(
      child: Row(
        children: [
          Text(
            "Employees",
            style: AppStyles.bold24,
          ),
          SizedBox(
            width: 20,
          ),
          Directionality(
            textDirection: TextDirection.rtl,
            child: CustomButton(
                onPressed: () {
                  context.push(Routes.addNewEmployeePageView);
                },
                text: "Add New Employee",
                Width: 200,
                image: AppImages.imagesAdd,
                color: AppColors.greenColor),
          )
        ],
      ),
    );
  }
}
