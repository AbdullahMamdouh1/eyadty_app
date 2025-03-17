import 'package:flutter/material.dart';

import '../../features/Apointments-and-patients/presentation/views/ upload_medical_file_page/upload_medical_file_page_view.dart';
import '../../features/Apointments-and-patients/presentation/views/add_new_patient_page/add_new_patient_view.dart';
import '../../features/Apointments-and-patients/presentation/views/appointments_page/appointments_page_view.dart';
 import '../../features/Apointments-and-patients/presentation/views/complete_patient_record/complete_patient_record_view.dart';
import '../../features/Apointments-and-patients/presentation/views/patients_page/patients_page_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppointmentsPageView.routeName:
      return MaterialPageRoute(builder: (context) => AppointmentsPageView());

    case PatientsPageView.routeName:
      return MaterialPageRoute(builder: (context) => PatientsPageView());
    case AddNewPatientView.routeName:
      return MaterialPageRoute(builder: (context) => AddNewPatientView());

    case UploadMedicalFilePageView.routeName:
      return MaterialPageRoute(builder: (context) => UploadMedicalFilePageView());

    case CompletePatientRecordView.routeName:
      return MaterialPageRoute(builder: (context) => CompletePatientRecordView());






    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
