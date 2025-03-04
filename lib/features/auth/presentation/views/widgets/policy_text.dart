import 'package:flutter/material.dart';

import '../signup_step1/widgets/custom_check_box.dart';

class PolicyText extends StatefulWidget {
  const PolicyText({
    super.key,
    required this.onChanged,
  });
  final ValueChanged<bool> onChanged;

  @override
  State<PolicyText> createState() => _PolicyTextState();
}

class _PolicyTextState extends State<PolicyText> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomCheckBox(
          onChecked: (value) {
            isTermsAccepted = value;
            widget.onChanged(value);
            setState(() {});
          },
          isChecked: isTermsAccepted,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("By signing up, you agree to our"),
            Row(
              children: [
                Text(
                  "Terms & Conditions ",
                  style: TextStyle(color: Colors.blue),
                ),
                Text("and "),
                Text("Privacy ", style: TextStyle(color: Colors.blue)),
              ],
            ),
            Text("Policy.", style: TextStyle(color: Colors.blue)),
          ],
        )
      ],
    );
  }
}
