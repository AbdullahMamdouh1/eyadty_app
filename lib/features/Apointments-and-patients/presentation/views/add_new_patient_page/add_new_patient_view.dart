import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../drawer/custom_drawer.dart';
import 'widgets/add_new_patient_view_body.dart';

class AddNewPatientView extends StatelessWidget {
  static const routeName = "AddNewPatientView";

  const AddNewPatientView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(118), // تحديد الارتفاع
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(child: AddNewPatientViewBody()),
    );
  }
}
