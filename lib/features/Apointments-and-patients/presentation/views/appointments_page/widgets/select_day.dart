import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_text_field_button.dart';

class SelectDay extends StatelessWidget {
  const SelectDay({
    super.key,
    required DateTime? selectedDay,
  }) : _selectedDay = selectedDay;

  final DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFieldButton(
          text: _selectedDay != null
              ? '  ${_selectedDay.day}/${_selectedDay.month}/${_selectedDay.year}'
              : 'select Day',
        ),
      ],
    );
  }
}
