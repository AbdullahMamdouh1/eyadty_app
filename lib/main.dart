 import 'package:flutter/material.dart';

import 'features/auth/presentation/views/login/login_step1/widgets/login_step1_view_body.dart';
import 'features/auth/presentation/views/login/login_step1/login_step1_view.dart';
import 'features/auth/presentation/views/login/login_step2/login_verify_view.dart';
import 'features/auth/presentation/views/signup_step2/signup_step2_view.dart';
import 'features/auth/presentation/views/signup_step2/widgets/Pin_code_verification.dart';
import 'features/auth/presentation/views/signup_step1/signup_view.dart';
import 'features/auth/presentation/views/signup_step3/signup_step3_view.dart';

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
      home: LoginVerifyView(),
    );
  }
}

