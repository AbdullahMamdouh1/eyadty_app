import 'package:flutter/material.dart';

class EndText extends StatelessWidget {
  const EndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Terms & Conditions",
          style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 36,
        ),
        Text(
          "Privacy Policy. ",
          style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
              decorationColor: Colors.blue,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
