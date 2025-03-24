import 'package:eyadty_app/features/auth/presentation/views/login/login_step2/widgets/login_verify_view_body.dart';
import 'package:flutter/material.dart';

class LoginVerifyView extends StatelessWidget {
  const LoginVerifyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child: LoginVerifyViewBody())),
    );
  }
}
