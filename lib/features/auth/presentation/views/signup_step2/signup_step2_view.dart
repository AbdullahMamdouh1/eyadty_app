import 'package:eyadty_app/features/auth/presentation/views/signup_step2/widgets/signup_step2_view_body.dart';
import 'package:flutter/material.dart';

class SignupStep2View extends StatelessWidget {
  const SignupStep2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: SignupStep2ViewBody()),
    );
  }
}
