import 'package:eyadty_app/features/auth/presentation/views/widgets/tab_bar.dart';
import 'package:flutter/material.dart';

  import '../../../../../core/widgets/custom_button.dart';
import 'login_page_hero.dart';
import 'or_line.dart';
import 'steps_line.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LoginPageHero(),
        SizedBox(height: 32,),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Already have Account? "),
              Text("Login",style: TextStyle(color: Colors.blue),)

            ],
          ),
        ),
        SizedBox(height: 24,),
        StepsLine(color1: Colors.green, ),
        SizedBox(height: 10,),
        SizedBox(
          height: 618,
            child: TabBarWidget()),
        SizedBox(height: 32,),
        OrLine(),

      ],
    );
  }
}





