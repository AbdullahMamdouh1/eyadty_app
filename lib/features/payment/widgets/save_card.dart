import 'package:flutter/material.dart';

import '../../../../../../../core/widgets/fitted_box.dart';
import '../../auth/presentation/views/widgets/custom_check_box.dart';

class  SaveCard extends StatefulWidget {
  const SaveCard({
    super.key,
    required this.onChanged,
  });
  final ValueChanged<bool> onChanged;

  @override
  State<SaveCard> createState() => _SaveCardState();
}

class _SaveCardState extends State<SaveCard> {
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
              Text("Save this card for future payments"),
              Text(
                "Your card details will be securely\n stored and encrypted for future transactions.",
                style: TextStyle(color: Colors.grey),
              ),
             ],
          )
        ],
      ),
    );
  }
}
