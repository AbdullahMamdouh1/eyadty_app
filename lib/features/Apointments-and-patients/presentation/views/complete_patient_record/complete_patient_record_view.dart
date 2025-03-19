import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../drawer/custom_drawer.dart';
import 'widgets/complete_patient_record_view_body.dart';

class CompletePatientRecordView extends StatelessWidget {
  static const routeName = "CompletePatientRecordView";

  const CompletePatientRecordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(118), // تحديد الارتفاع
        child: CustomAppBar(),

      ),
      body: SingleChildScrollView(child: CompletePatientRecordViewBody()),

      drawer: CustomDrawer(),
    );
  }
}
