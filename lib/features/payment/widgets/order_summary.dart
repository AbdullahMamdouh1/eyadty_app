import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';
import '../../../generated/assets.dart';
import 'premium_plan_annual.dart';

class OrderSummary extends StatefulWidget {
  const OrderSummary({super.key});

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {

  String _selectedAccount = 'free';

  void _updateSelectedAccount(String account) {
    setState(() {
      _selectedAccount = account;
    });
  }

  String get _price {
    if (_selectedAccount == 'premium') {
      return '15';
    } else {
      return '120';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(Assets.imagesShoppingCart, color: Colors.green, height: 50),
        Text('Order Summary', style: AppStyles.bold18),
        sizedBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(Assets.imagesMilitaryTech),
            Text('Premium Plan -\n Annual', style: AppStyles.bold18),
            Row(
              children: [
                Text('\$$_price', style: AppStyles.bold18),
                Text('/ month', style: AppStyles.regular15),
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          'Access full clinic management\n features.',
          style: AppStyles.regular15,
        ),
        sizedBox,
        PremiumPlanAnnual(onAccountSelected: _updateSelectedAccount),
      ],
    );
  }
}
