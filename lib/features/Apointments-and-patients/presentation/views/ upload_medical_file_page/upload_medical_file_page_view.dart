import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../drawer/custom_drawer.dart';
import 'widgets/upload_medical_file_page_view_body.dart';

class  UploadMedicalFilePageView extends StatelessWidget {
  static const routeName = "UploadMedicalFilePageView";

  const UploadMedicalFilePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(118), // تحديد الارتفاع
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(child: UploadMedicalFilePageViewBody()),
    );
  }
}
