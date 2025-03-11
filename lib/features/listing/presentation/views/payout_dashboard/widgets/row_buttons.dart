import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';

class RowButtons extends StatelessWidget {
  const RowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 35,
          decoration: BoxDecoration(
              color: AppColors.greenColor,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            children: [
              Icon(
                Icons.check,
                color: Colors.white,
              ),
              Text(
                "Earnings",
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          width: 100,
          height: 35,
          decoration: BoxDecoration(
              color: Color(0xFFD8F0E7),
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8)),
          child: Center(
              child: Text(
            "Bookings",
            style: TextStyle(color: Colors.green),
          )),
        ),
        SizedBox(
          width: 8,
        ),
        Container(
          width: 100,
          height: 35,
          decoration: BoxDecoration(
              color: Color(0xFFD8F0E7),
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8)),
          child: Center(
              child: Text(
            "Balance",
            style: TextStyle(color: Colors.green),
          )),
        ),
      ],
    );
  }
}
