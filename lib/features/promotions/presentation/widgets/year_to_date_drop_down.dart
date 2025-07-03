import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YearToDateDropdown extends StatefulWidget {
  final Function(String?)? onChanged;
  final List<String>? customOptions;
  final String? initialValue;

  const YearToDateDropdown({
    super.key,
    this.onChanged,
    this.customOptions,
    this.initialValue,
  });

  @override
  State<YearToDateDropdown> createState() => _YearToDateDropdownState();
}

class _YearToDateDropdownState extends State<YearToDateDropdown> {
  String? selectedValue;

  // Default time period options
  final List<String> defaultOptions = [
    'Year to date',
    'Last 30 days',
    'Last 90 days',
    'Last 6 months',
    'Last 12 months',
    'Custom range',
  ];

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    final options = widget.customOptions ?? defaultOptions;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: DropdownButtonFormField<String>(
        padding: EdgeInsets.zero,
        value: selectedValue,
        hint: Text('Year to date',
            style: TextStyle(fontSize: 15.sp, fontFamily: 'Karla')),
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.only(left: 12.w, right: 8.w, top: 12.h, bottom: 12.h),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        icon: Transform.rotate(
            angle: 4.7,
            child: Icon(Icons.arrow_back_ios_new_rounded, size: 15.sp)),
        items: options.map((String option) {
          return DropdownMenuItem<String>(
            value: option,
            child: Text(
              option,
              style: TextStyle(fontSize: 15.sp, fontFamily: 'Karla'),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue;
          });
          if (widget.onChanged != null) {
            widget.onChanged!(newValue);
          }
        },
      ),
    );
  }
}
