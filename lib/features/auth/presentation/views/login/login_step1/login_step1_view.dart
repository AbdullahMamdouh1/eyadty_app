import 'package:eyadty_app/features/auth/presentation/views/login/login_step1/widgets/login_step1_view_body.dart';
import 'package:flutter/material.dart';

class LoginStep1View extends StatelessWidget {
  const LoginStep1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: LoginStep1ViewBody()),
    );
  }
}
