import 'package:eyadty_app/features/listing/presentation/views/payout_dashboard/widgets/row_buttons.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../../core/widgets/fitted_box.dart';
import '../../../../../../generated/assets.dart';
import 'income_chart.dart';

class CurrentCycleOverview extends StatelessWidget {
  const CurrentCycleOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerShape(
      Child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Current Cycle Overview",
              style: AppStyles.bold18,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "Jan 1–15, 2025",
              style: AppStyles.bold18.copyWith(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            FittedBoxS(child: RowButtons()),
            sizedBox,
            IncomeChart(),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              onPressed: () {},
              text: 'View Details',
              color: AppColors.greenColor,
              image: Assets.imagesView,
            )
          ],
        ),
      ),
     );
    ;
  }
}
