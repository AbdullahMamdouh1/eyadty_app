 import 'package:eyadty_app/features/listing/presentation/views/listing_add_list_step2/listing_add_list_step2_view.dart';
import 'package:flutter/material.dart';


 import 'core/helper_functions/on_generate_routes.dart';
import 'features/Apointments-and-patients/presentation/views/ upload_medical_file_page/upload_medical_file_page_view.dart';
import 'features/Apointments-and-patients/presentation/views/add_new_patient_page/add_new_patient_view.dart';
import 'features/Apointments-and-patients/presentation/views/appointments_page/appointments_page_view.dart';
import 'features/Apointments-and-patients/presentation/views/complete_patient_record/complete_patient_record_view.dart';
import 'features/Apointments-and-patients/presentation/views/patients_page/patients_page_view.dart';
import 'features/Offers-and-promotion/presentation/views/ClinicListingPage/listing_add_list_step5_view.dart';
import 'features/Offers-and-promotion/presentation/views/CreateOfferPage/create_offerPage_view.dart';
import 'features/Offers-and-promotion/presentation/views/ManageListingPage/manage_listing_page_view.dart';
import 'features/Offers-and-promotion/presentation/views/OffersListingPage/offers_listing_page_view.dart';
import 'features/adding_new_employee/presentation/views/employees_page/employees_page_view.dart';
  import 'features/Apointments-and-patients/presentation/views/appointments_page/widgets/calendar.dart';
import 'features/listing/presentation/views/listing_add_list_step1/listing_add_list_step1_view.dart';
import 'features/listing/presentation/views/listing_add_list_step3/listing_add_list_step3_view.dart';
import 'features/listing/presentation/views/listing_add_list_step4/listing_add_list_step4_view.dart';
import 'features/listing/presentation/views/listing_add_list_step5/listing_add_list_step5_view.dart';
import 'features/listing/presentation/views/listing_add_more-listing/listing_add_more-listing_view.dart';
import 'features/listing/presentation/views/payout_dashboard/payout_dashboard_view.dart';
import 'features/listing/presentation/views/widgets/dialog_payment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
         scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

      initialRoute: CompletePatientRecordView.routeName ,
      onGenerateRoute: onGenerateRoute,
    );
  }
}

