import 'package:flutter/material.dart';

import '../../features/Apointments-and-patients/presentation/views/ upload_medical_file_page/upload_medical_file_page_view.dart';
import '../../features/Apointments-and-patients/presentation/views/add_new_patient_page/add_new_patient_view.dart';
import '../../features/Apointments-and-patients/presentation/views/appointments_page/appointments_page_view.dart';
import '../../features/Apointments-and-patients/presentation/views/complete_patient_record/complete_patient_record_view.dart';
import '../../features/Apointments-and-patients/presentation/views/patients_page/patients_page_view.dart';
import '../../features/adding_new_employee/presentation/views/add_new_employee_page/add_new_employee_page_view.dart';
import '../../features/adding_new_employee/presentation/views/employees_page/employees_page_view.dart';

class AppRoutes {
  static const String appointments = '/appointments';
  static const String patients = '/patients';
  static const String addNewPatient = '/addNewPatient';
  static const String uploadMedicalFile = '/uploadMedicalFile';
  static const String completePatientRecord = '/completePatientRecord';
  static const String employeesPageView = '/EmployeesPageView';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case appointments:
        return MaterialPageRoute(
          builder: (context) => const AppointmentsPageView(),
        );

      case patients:
        return MaterialPageRoute(
          builder: (context) => const PatientsPageView(),
        );

      case addNewPatient:
        return MaterialPageRoute(
          builder: (context) => const AddNewPatientView(),
        );

      case uploadMedicalFile:
        return MaterialPageRoute(
          builder: (context) => const UploadMedicalFilePageView(),
        );

      case completePatientRecord:
        return MaterialPageRoute(
          builder: (context) => const CompletePatientRecordView(),
        );

      case employeesPageView:
        return MaterialPageRoute(
          builder: (context) =>    EmployeesPageView(index: 1),
        );

      default:
        return MaterialPageRoute(builder: (context) => const Scaffold());
    }
  }
}
