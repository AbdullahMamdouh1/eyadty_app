import 'package:eyadty_app/features/payment/widgets/payment-page_view_body.dart';
import 'package:flutter/material.dart';

class PaymentPageView extends StatelessWidget {
  const PaymentPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child: PaymentPageViewBody())),
    );
  }
}
