import 'package:eyadty_app/features/auth/presentation/views/login/login_step1/widgets/login_step1_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';

class LoginStep1View extends StatelessWidget {
  const LoginStep1View({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(child: SingleChildScrollView(child: LoginStep1ViewBody())),
    );
  }
}
