 import 'package:eyadty_app/features/listing/presentation/views/payout_dashboard/widgets/trends_and_insights.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../widgets/title_text.dart';
 import 'current_cycle _overview.dart';
import 'statement_details.dart';

class PayoutDashboardViewBody extends StatelessWidget {
  const PayoutDashboardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 20),
        child: Column(children: [
          SizedBox(
            height: 32,
          ),
          TitleText(
            Title: 'Payout Dashboard ',
            SubTitle:
                "Manage your earnings and payments for online bookings processed through Eyadti.",
          ),
          sizedBox,
          CurrentCycleOverview(),
          sizedBox,
          TrendsAndInsights(),
          sizedBox,
          StatementDetails(),
          SizedBox(height: 50,)

        ]));
  }
}
