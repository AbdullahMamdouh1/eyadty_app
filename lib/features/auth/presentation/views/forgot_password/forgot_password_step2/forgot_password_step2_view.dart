import 'package:eyadty_app/features/auth/presentation/views/forgot_password/forgot_password_step2/widgets/forgot_password_step2_body.dart';
 import 'package:flutter/material.dart';

class  ForgotPasswordStep2View extends StatelessWidget {
  const ForgotPasswordStep2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: ForgotPasswordStep2Body()),
    );
  }
}
