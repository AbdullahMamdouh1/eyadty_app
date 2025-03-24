import 'package:eyadty_app/core/utils/app_colors.dart';
  import 'package:flutter/material.dart';

import 'active_box.dart';
import 'add_new_employee_box.dart';
import 'row_button_screen.dart';

class EmployeesPageViewBody extends StatelessWidget {
  const EmployeesPageViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 32,
          ),
          RowButtonScreen(),
          sizedBox,
          ActiveBox(),
          SizedBox(
            height: 20,
          ),
          AddNewEmployeeBox(),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
