import 'package:eyadty_app/features/payment/widgets/row_scroll.dart';
import 'package:eyadty_app/features/payment/widgets/upgrade_premium.dart';
import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
 import 'billing_information.dart';
import 'card_number.dart';
import 'order_summary.dart';
import 'plan_cost.dart';
import 'what_included.dart';

class PaymentPageViewBody extends StatefulWidget {
  const PaymentPageViewBody({super.key});

  @override
  State<PaymentPageViewBody> createState() => _PaymentPageViewBodyState();
}

class _PaymentPageViewBodyState extends State<PaymentPageViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  UpgradePremium(),
                  sizedBox,
                  RowScroll(),
                  sizedBox,
                  CardNumber(),
                  SizedBox(height: 20),
                  BillingInformation(),
                  SizedBox(height: 25),
                ],
              ),
            ),
          ),
          sizedBox,
          OrderSummary(),
          sizedBox,
          WhatIncluded(),
          sizedBox,
          PlanCost(),
          sizedBox,
        ],
      ),
    );
  }
}
