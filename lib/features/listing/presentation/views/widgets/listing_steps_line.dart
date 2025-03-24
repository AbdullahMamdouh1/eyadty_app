import 'package:flutter/material.dart';

class ListingStepsLine extends StatelessWidget {
  final Color? color1;
  final Color? color2;
  final Color? color3;
  final Color? color4;
  final Color? color5;
  const ListingStepsLine({
    super.key,
    this.color1,
    this.color2,
    this.color3,
    this.color4, this.color5,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 4,
                width: 64,
                color: color1 != null ? Colors.green : Colors.green[200],
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                height: 4,
                width: 64,
                color: color2 != null ? Colors.green : Colors.green[200],
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                height: 4,
                width: 64,
                color: color3 != null ? Colors.green : Colors.green[200],
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                height: 4,
                width: 64,
                color: color4 != null ? Colors.green : Colors.green[200],
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                height: 4,
                width: 64,
                color: color5 != null ? Colors.green : Colors.green[200],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
