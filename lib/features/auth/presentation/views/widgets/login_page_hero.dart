import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';

class LoginPageHero extends StatelessWidget {
  const LoginPageHero({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
            image: AssetImage(Assets.imagesLoginPageHero), fit: BoxFit.fill),
      ),
      child: Text("data"),
    );
  }
}
