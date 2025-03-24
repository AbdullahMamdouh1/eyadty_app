import 'package:eyadty_app/features/Offers-and-promotion/presentation/views/CreateOfferPage/create_offerPage_view.dart';
import 'package:eyadty_app/features/auth/presentation/views/forgot_password/forgot_password_step4/password_reset_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/Apointments-and-patients/presentation/views/ upload_medical_file_page/upload_medical_file_page_view.dart';
import '../../features/Apointments-and-patients/presentation/views/add_new_patient_page/add_new_patient_view.dart';
import '../../features/Apointments-and-patients/presentation/views/appointments_page/appointments_page_view.dart';
import '../../features/Apointments-and-patients/presentation/views/complete_patient_record/complete_patient_record_view.dart';
import '../../features/Apointments-and-patients/presentation/views/patients_page/patients_page_view.dart';
import '../../features/Offers-and-promotion/presentation/views/ClinicListingPage/listing_add_list_step5_view.dart';
import '../../features/Offers-and-promotion/presentation/views/ManageListingPage/manage_listing_page_view.dart';
import '../../features/Offers-and-promotion/presentation/views/OffersListingPage/offers_listing_page_view.dart';
import '../../features/adding_new_employee/presentation/views/add_new_employee_page/add_new_employee_page_view.dart';
import '../../features/adding_new_employee/presentation/views/employee_added_successfully.dart';
import '../../features/adding_new_employee/presentation/views/employees_page/employees_page_view.dart';

import '../../features/auth/presentation/views/forgot_password/forgot_password_step1/forgot_password_step1_view.dart';
import '../../features/auth/presentation/views/forgot_password/forgot_password_step2/forgot_password_step2_view.dart';
import '../../features/auth/presentation/views/forgot_password/forgot_password_step3/forgot_password_step3_view.dart';
import '../../features/auth/presentation/views/login/login_step1/login_step1_view.dart';
import '../../features/auth/presentation/views/login/login_step2/login_verify_view.dart';
import '../../features/auth/presentation/views/signup_step1/signup_view.dart';
import '../../features/auth/presentation/views/signup_step2/signup_step2_view.dart';
import '../../features/auth/presentation/views/signup_step3/signup_step3_view.dart';
import '../../features/listing/presentation/views/listing_add_list_step1/listing_add_list_step1_view.dart';
import '../../features/listing/presentation/views/listing_add_list_step2/listing_add_list_step2_view.dart';
import '../../features/listing/presentation/views/listing_add_list_step3/listing_add_list_step3_view.dart';
import '../../features/listing/presentation/views/listing_add_list_step4/listing_add_list_step4_view.dart';
import '../../features/listing/presentation/views/listing_add_list_step5/listing_add_list_step5_view.dart';
import '../../features/listing/presentation/views/listing_add_more-listing/listing_add_more-listing_view.dart';
import '../../features/listing/presentation/views/payout_dashboard/payout_dashboard_view.dart';
import '../../features/listing/presentation/views/widgets/dialog_payment.dart';
import '../../features/payment/Payment-page_view.dart';

class AppRoutes {
  static const String patientsPageView = '/patients';
  static const String completePatientRecordView = '/completePatientRecord';
  static const String appointmentsPageView = '/appointments';
  static const String addNewPatientView = '/addNewPatient';
  static const String uploadMedicalFilePageView = '/uploadMedicalFile';
  static const String employeesPageView = '/employeesPageView';
  static const String employeeAddedSuccessfully = '/employeeAddedSuccessfully';
  static const String addNewEmployeePageView = '/addNewEmployee';
  static const String signupStep3View = '/signupStep3';
  static const String signupStep2View = '/signupStep2';
  static const String signupView = '/signup';
  static const String loginVerifyView = '/loginVerify';
  static const String loginStep1View = '/loginStep1';
  static const String passwordResetCard = '/passwordResetCard';
  static const String forgotPasswordStep3View = '/forgotPasswordStep3';
  static const String forgotPasswordStep2View = '/forgotPasswordStep2';
  static const String forgotPasswordStep1View = '/forgotPasswordStep1';
  static const String offersListingPageView = '/offersListing';
  static const String manageListingPageView = '/manageListing';
  static const String createOfferpageView = '/createOffer';
  static const String clinicListingPageView = '/clinicListing';
  static const String payoutDashboardView = '/payoutDashboard';
  static const String listingAddMoreListingView = '/listingAddMoreListing';
  static const String listingAddListStep5View = '/listingAddListStep5';
  static const String listingAddListStep4View = '/listingAddListStep4';
  static const String listingAddListStep3View = '/listingAddListStep3';
  static const String listingAddListStep2View = '/listingAddListStep2';
  static const String listingAddListStep1View = '/listingAddListStep1';
  static const String dialogPayment = '/DialogPayment';
  static const String paymentPageView = '/PaymentPageView';



  static final GoRouter router = GoRouter(
    initialLocation: loginStep1View,
    routes: [
      GoRoute(
        path: patientsPageView,
        builder: (context, state) => const PatientsPageView(),
      ),
      GoRoute(
        path: completePatientRecordView,
        builder: (context, state) => const CompletePatientRecordView(),
      ),
      GoRoute(
        path: appointmentsPageView,
        builder: (context, state) => const AppointmentsPageView(),
      ),
      GoRoute(
        path: addNewPatientView,
        builder: (context, state) => const AddNewPatientView(),
      ),
      GoRoute(
        path: uploadMedicalFilePageView,
        builder: (context, state) => const UploadMedicalFilePageView(),
      ),
      GoRoute(
        path: employeesPageView,
        builder: (context, state) => const EmployeesPageView(
          index: 1,
        ),
      ),
      GoRoute(
        path: employeeAddedSuccessfully,
        builder: (context, state) => const EmployeeAddedSuccessfully(),
      ),
      GoRoute(
        path: addNewEmployeePageView,
        builder: (context, state) => const AddNewEmployeePageView(
          index: 1,
        ),
      ),
      GoRoute(
        path: signupStep3View,
        builder: (context, state) => const SignupStep3View(),
      ),
      GoRoute(
        path: signupStep2View,
        builder: (context, state) => const SignupStep2View(),
      ),
      GoRoute(
        path: signupView,
        builder: (context, state) => const SignupView(),
      ),
      GoRoute(
        path: loginVerifyView,
        builder: (context, state) => const LoginVerifyView(),
      ),
      GoRoute(
        path: loginStep1View,
        builder: (context, state) => const LoginStep1View(),
      ),
      GoRoute(
        path: passwordResetCard,
        builder: (context, state) => const PasswordResetCard(),
      ),
      GoRoute(
        path: forgotPasswordStep3View,
        builder: (context, state) => const ForgotPasswordStep3View(),
      ),
      GoRoute(
        path: forgotPasswordStep2View,
        builder: (context, state) => const ForgotPasswordStep2View(),
      ),
      GoRoute(
        path: forgotPasswordStep1View,
        builder: (context, state) => const ForgotPasswordStep1View(),
      ),
      GoRoute(
        path: offersListingPageView,
        builder: (context, state) => const OffersListingPageView(),
      ),
      GoRoute(
        path: manageListingPageView,
        builder: (context, state) => const ManageListingPageView(),
      ),
      GoRoute(
        path: createOfferpageView,
        builder: (context, state) => const CreateOfferpageView(),
      ),
      GoRoute(
        path: clinicListingPageView,
        builder: (context, state) => const ClinicListingPageView(),
      ),
      GoRoute(
        path: payoutDashboardView,
        builder: (context, state) => const PayoutDashboardView(),
      ),
      GoRoute(
        path: listingAddMoreListingView,
        builder: (context, state) => const ListingAddMoreListingView(),
      ),
      GoRoute(
        path: listingAddListStep5View,
        builder: (context, state) => const ListingAddListStep5View(),
      ),
      GoRoute(
        path: listingAddListStep4View,
        builder: (context, state) => const ListingAddListStep4View(),
      ),
      GoRoute(
        path: listingAddListStep3View,
        builder: (context, state) => const ListingAddListStep3View(),
      ),
      GoRoute(
        path: listingAddListStep2View,
        builder: (context, state) => const ListingAddListStep2View(),
      ),
      GoRoute(
        path: listingAddListStep1View,
        builder: (context, state) => const ListingAddListStep1View(),
      ),
      GoRoute(
        path: dialogPayment,
        builder: (context, state) => const DialogPayment(),
      ),
      GoRoute(
        path: paymentPageView,
        builder: (context, state) => const PaymentPageView(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(title: Text('Page Not Found')),
      body: Center(child: Text('404 - Page Not Found')),
    ),
  );
}

/*

context.go: يستبدل الصفحة الحالية (بدون رجوع).
context.push: يضيف صفحة جديدة فوق الحالية (مع إمكانية الرجوع).
context.pop: للعودة إلى الصفحة السابقة.
context.replace: يستبدل الصفحة الحالية بصفحة جديدة.
إرسال بيانات عبر queryParams: مثالي لتمرير معلومات بسيطة.



GoRoute(
      path: '/profile/:name/:phone',  // إضافة المعاملات في المسار
      name: 'profile',
      builder: (context, state) {
        final name = state.params['name'] ?? 'Unknown';
        final phone = state.params['phone'] ?? 'N/A';
        return ProfileScreen(name: name, phone: phone);
      },
    ),

 */
