 import 'package:eyadty_app/features/auth/presentation/views/widgets/step_text.dart';
import 'package:flutter/material.dart';


class StepsLine extends StatelessWidget {
  final Color? color1;
  final Color? color2;
  final Color? color3;
  const StepsLine({
    super.key,
    this.color1,
    this.color2,
    this.color3,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 4,
              width: 109,
              color: color1 != null ? Colors.green : Colors.green[200],
            ),
            SizedBox(
              width: 4,
            ),
            Container(
              height: 4,
              width: 109,
              color: color2 != null ? Colors.green : Colors.green[200],
            ),
            SizedBox(
              width: 4,
            ),
            Container(
              height: 4,
              width: 109,
              color: color3 != null ? Colors.green : Colors.green[200],
            ),
          ],
        ),

      ],
    );
  }
}
