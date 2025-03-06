import 'package:flutter/material.dart';

import 'widgets/signup_step3_view_body.dart';

class SignupStep3View extends StatelessWidget {
  const SignupStep3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child: SignupStep3ViewBody())),
    );
  }
}
