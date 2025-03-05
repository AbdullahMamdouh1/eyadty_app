import 'package:flutter/material.dart';

class boxShape extends StatelessWidget {
  const boxShape({
    super.key,
    required this.Child,
    required this.Height,
  });
  final Widget Child;
  final double Height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Height,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: Child,
    );
  }
}
