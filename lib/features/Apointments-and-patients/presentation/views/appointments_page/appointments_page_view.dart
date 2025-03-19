import 'package:eyadty_app/features/Apointments-and-patients/presentation/views/appointments_page/widgets/appointments_page_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../drawer/custom_drawer.dart';

class AppointmentsPageView extends StatelessWidget {
  static const routeName = "AppointmentsPageView";
  const AppointmentsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
          drawer: CustomDrawer(),
          
          body: SingleChildScrollView(
            child: AppointmentsPageViewBody(),
          )),
    );
  }
}
