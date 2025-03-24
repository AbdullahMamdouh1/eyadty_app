import 'package:eyadty_app/features/listing/presentation/views/payout_dashboard/widgets/patient_chart.dart';
import 'package:eyadty_app/features/listing/presentation/views/payout_dashboard/widgets/row_buttons.dart';
import 'package:eyadty_app/features/listing/presentation/views/payout_dashboard/widgets/trends_buttons.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../../generated/assets.dart';
import 'income_chart.dart';

class  TrendsAndInsights extends StatelessWidget {
  const TrendsAndInsights({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainerShape(
      Child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Trends and Insights",
              style: AppStyles.bold18,
            ),

            SizedBox(
              height: 16,
            ),
            TrendsButtons(text: 'Last Week',),
            SizedBox(
              height: 16,
            ),
            TrendsButtons(text: 'Earnings Trends',),


          SizedBox(
            height: 20,
          ),
            PatientChart(),

          ],
        ),
      ),
     );

  }
}
