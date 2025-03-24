import 'package:flutter/material.dart';

class  CustomContainerShape extends StatelessWidget {
  const CustomContainerShape({
    super.key,
    required this.Child,
   });
  final Widget Child;
   @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Child,
        ],
      ),
    );
  }
}
