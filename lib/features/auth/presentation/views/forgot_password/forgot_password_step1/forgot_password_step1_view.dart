import 'package:eyadty_app/features/auth/presentation/views/forgot_password/forgot_password_step1/widgets/forgot_password_step1_view_body.dart';
import 'package:flutter/material.dart';



 class ForgotPasswordStep1View extends StatelessWidget {
   const ForgotPasswordStep1View({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(child: SingleChildScrollView(child: ForgotPasswordStep1ViewBody())),
     );
   }
 }
