import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_text_styles.dart';

class PremiumPlanAnnual extends StatefulWidget {
  final ValueChanged<String> onAccountSelected;

  const PremiumPlanAnnual({super.key, required this.onAccountSelected});

  @override
  _PremiumPlanAnnualState createState() => _PremiumPlanAnnualState();
}

class _PremiumPlanAnnualState extends State<PremiumPlanAnnual> {
  String _selectedAccount = 'free';

  void _selectAccount(String account) {
    setState(() {
      _selectedAccount = account;
      widget.onAccountSelected(_selectedAccount);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => _selectAccount('free'),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Radio<String>(
                  value: 'free',
                  groupValue: _selectedAccount,
                  onChanged: (value) => _selectAccount(value!),
                  activeColor: Colors.green,
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pay Annual',
                      style: AppStyles.regular15.copyWith(color: AppColors.blackColor),
                    ),
                    Text(
                      '120\$',
                      style: AppStyles.regular15.copyWith(color: AppColors.greyColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () => _selectAccount('premium'),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Radio<String>(
                  value: 'premium',
                  groupValue: _selectedAccount,
                  onChanged: (value) => _selectAccount(value!),
                  activeColor: Colors.green,
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pay Monthly',
                      style: AppStyles.regular15.copyWith(color: AppColors.blackColor),
                    ),
                    Text(
                      '15\$',
                      style: AppStyles.regular15.copyWith(color: AppColors.greyColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
