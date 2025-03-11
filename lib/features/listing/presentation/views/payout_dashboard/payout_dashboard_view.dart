import 'package:eyadty_app/core/widgets/custom_app_bar.dart';
import 'package:eyadty_app/features/listing/presentation/views/payout_dashboard/widgets/payout_dashboard_view_body.dart';
import 'package:flutter/material.dart';

class PayoutDashboardView extends StatelessWidget {
  const PayoutDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(118), // تحديد الارتفاع
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(child: PayoutDashboardViewBody()),
    );;
  }
}
