import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SelectAccountType extends StatelessWidget {
  const SelectAccountType({
    super.key,
    required this.onChanged,
    required this.isChecked,
  });
  final ValueChanged<bool> onChanged;

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 16,
          width: 16,
          decoration: BoxDecoration(
              color: isChecked ? Colors.green : Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.greyColor)),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Free Account"),
            Text("Access to E-Commerce and register",
                style: TextStyle(color: Colors.grey)),
            Text("your clinic to receive Bookings",
                style: TextStyle(color: Colors.grey)),
            SizedBox(
              height: 24,
            )
          ],
        )
      ],
    );
  }
}
