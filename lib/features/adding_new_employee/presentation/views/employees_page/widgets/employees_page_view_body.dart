import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:eyadty_app/core/utils/app_text_styles.dart';
import 'package:eyadty_app/core/widgets/custom_container_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../core/widgets/custom_text_field.dart';
import '../../../../../../generated/assets.dart';
import '../../../../../auth/presentation/views/widgets/step_text.dart';
import '../../../../../listing/presentation/views/widgets/title_text.dart';
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
