import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_text_styles.dart';

class AccountSelection extends StatefulWidget {
  @override
  _AccountSelectionState createState() => _AccountSelectionState();
}

class _AccountSelectionState extends State<AccountSelection> {
  String _selectedAccount = 'free';

  @override
  Widget build(BuildContext context) {
    return   Column(
        crossAxisAlignment: CrossAxisAlignment.start, // يجعل العناصر تبدأ من اليسار تمامًا
        children: [
          Text(
            'Select Account Type',
            style:AppStyles.regular15.copyWith(color: AppColors.blackColor),
          ),
          SizedBox(height: 20),

          // ✅ الخيار الأول
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedAccount = 'free';
              });
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start, // للتأكد أن الراديو محاذي للنص
              children: [
                Radio<String>(
                  value: 'free',
                  groupValue: _selectedAccount,
                  onChanged: (value) {
                    setState(() {
                      _selectedAccount = value!;
                    });
                  },
                  activeColor: Colors.green,
                  fillColor: WidgetStateProperty.resolveWith<Color>(
                        (states) => Colors.green, // لون الدائرة عند التحديد
                  ),
                  visualDensity: VisualDensity.compact, // لجعل الراديو مضغوط أكثر
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // تقليل المساحة المحيطة
                ),
                SizedBox(width: 8), // مسافة بسيطة بين الراديو والنص
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Free Account',
                        style: AppStyles.regular15.copyWith(color: AppColors.blackColor),
                      ),
                      Text(
                        'Access to E-Commerce and register your clinic to receive Bookings',
                        style: AppStyles.regular15.copyWith(color: AppColors.greyColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 10),

          // ✅ الخيار الثاني
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedAccount = 'premium';
              });
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Radio<String>(
                  value: 'premium',
                  groupValue: _selectedAccount,
                  onChanged: (value) {
                    setState(() {
                      _selectedAccount = value!;
                    });
                  },
                  activeColor: Colors.green,
                  fillColor: WidgetStateProperty.resolveWith<Color>(
                        (states) => Colors.green, // لون الدائرة عند التحديد
                  ),
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Premium Account',
                        style: AppStyles.regular15.copyWith(color: AppColors.blackColor),
                      ),
                      Text(
                        'All in free plus Clinic Management System and verified booking badge',
                        style: AppStyles.regular15.copyWith(color: AppColors.greyColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    ;
  }
}
