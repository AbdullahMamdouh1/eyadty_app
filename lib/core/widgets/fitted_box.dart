import 'package:flutter/material.dart';

class FittedBoxS extends StatelessWidget {
  const FittedBoxS({super.key, this.height, this.width, required this.child,});
  final double? height;
  final double? width;
  final dynamic child;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: child,
      ),
    );
  }
}
