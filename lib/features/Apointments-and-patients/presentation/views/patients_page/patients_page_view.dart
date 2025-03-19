 import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../drawer/custom_drawer.dart';
import 'widgets/patients_page_view_body.dart';

class  PatientsPageView extends StatelessWidget {
  static const routeName = "PatientsPageView";

  const PatientsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(118), // تحديد الارتفاع
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(child: PatientsPageViewBody()),
    );
  }
}
