import 'package:eyadty_app/features/auth/presentation/views/forgot_password/forgot_password_step3/widgets/forgot_password_step3_view_body.dart';
import 'package:flutter/material.dart';

class ForgotPasswordStep3View extends StatelessWidget {
  const ForgotPasswordStep3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: ForgotPasswordStep3ViewBody()),
    );
  }
}
