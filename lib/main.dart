 import 'package:flutter/material.dart';

import 'features/auth/presentation/views/signup_step2/signup_step2_view.dart';
import 'features/auth/presentation/views/signup_step2/widgets/Pin_code_verification.dart';
import 'features/auth/presentation/views/signup_step1/signup_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SignupStep2View(),
    );
  }
}

