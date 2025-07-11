import 'package:eyadty_app/features/adding_new_employee/presentation/views/add_new_employee_page/widgets/add_new_employee_page_view_body.dart';
import 'package:eyadty_app/features/adding_new_employee/presentation/views/employees_page/widgets/employees_page_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../drawer/custom_drawer.dart';

class AddNewEmployeePageView extends StatelessWidget {
  static const String routeName = 'EmployeesPageView';
  const AddNewEmployeePageView({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(118), // تحديد الارتفاع
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(
        child: AddNewEmployeePageViewBody(),
      ),
      drawer: CustomDrawer(),

    );

  }
}
