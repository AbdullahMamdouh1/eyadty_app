import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../generated/assets.dart';
import 'end_text.dart';

class OrLine extends StatelessWidget {
  const OrLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 4,
              width: 109,
              color: Colors.green[200],
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.0, right: 4),
              child: Text(
                "OR",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 4,
              width: 109,
              color: Colors.green[200],
            ),
          ],
        ),
        SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20),
          child: CustomButton(
            onPressed: () {},
            text: 'Sign Up with Google',
            image: Assets.imagesGoogle,
            color: Colors.blue,
          ),
        ),
        SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20),
          child: CustomButton(
            onPressed: () {},
            text: 'Sign Up with Apple',
            image: Assets.imagesApple,
            color: Colors.blue,
          ),
        ),
        SizedBox(
          height: 96,
        ),
        EndText(),
        SizedBox(
          height: 32,
        )
      ],
    );
  }
}

