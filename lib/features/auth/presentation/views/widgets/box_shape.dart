import 'package:flutter/material.dart';

class boxShape extends StatelessWidget {
  const boxShape({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(8)),
      child: widget,
    );
  }
}
