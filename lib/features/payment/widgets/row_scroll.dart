import 'package:flutter/material.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_text_styles.dart';

class RowScroll extends StatefulWidget {
  const RowScroll({super.key});

  @override
  State<RowScroll> createState() => _RowScrollState();
}

class _RowScrollState extends State<RowScroll> {
  String _selectedAccount = 'free';
  void _selectAccount(String account) {
    setState(() {
      _selectedAccount = account;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey)),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => _selectAccount('Credit/Debit Card'),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Radio<String>(
                        value: 'Credit/Debit Card',
                        groupValue: _selectedAccount,
                        onChanged: (value) => _selectAccount(value!),
                        activeColor: Colors.green,
                      ),
                      Text(
                        'Credit/Debit Card',
                        style: AppStyles.regular15
                            .copyWith(color: AppColors.blackColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey)),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => _selectAccount('Mobile Wallet'),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Radio<String>(
                        value: 'Mobile Wallet',
                        groupValue: _selectedAccount,
                        onChanged: (value) => _selectAccount(value!),
                        activeColor: Colors.green,
                      ),
                      Text(
                        'Mobile Wallet',
                        style: AppStyles.regular15
                            .copyWith(color: AppColors.blackColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey)),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => _selectAccount('PayPal'),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Radio<String>(
                        value: 'PayPal',
                        groupValue: _selectedAccount,
                        onChanged: (value) => _selectAccount(value!),
                        activeColor: Colors.green,
                      ),
                      Text(
                        'PayPal',
                        style: AppStyles.regular15
                            .copyWith(color: AppColors.blackColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
