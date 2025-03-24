import 'package:flutter/material.dart';

import '../../../../../../../core/widgets/fitted_box.dart';
import '../../../widgets/custom_check_box.dart';

class ProtectYourPrivacy extends StatefulWidget {
  const ProtectYourPrivacy({
    super.key,
    required this.onChanged,
  });
  final ValueChanged<bool> onChanged;

  @override
  State<ProtectYourPrivacy> createState() => _ProtectYourPrivacyState();
}

class _ProtectYourPrivacyState extends State<ProtectYourPrivacy> {
  bool isTermsAccepted = false;

  @override
  Widget build(BuildContext context) {
    return FittedBoxS(
      child: Row(
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
              Text("Protect your privacy"),
              Text(
                "Log out from all other devices and",
                style: TextStyle(color: Colors.grey),
              ),
              Text("end all active sessions.",
                  style: TextStyle(color: Colors.grey)),
            ],
          )
        ],
      ),
    );
  }
}
