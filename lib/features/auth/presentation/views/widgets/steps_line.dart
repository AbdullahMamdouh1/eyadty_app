import 'package:flutter/material.dart';

class StepsLine extends StatelessWidget {

  final Color? color1;
  final Color? color2;
  final Color? color3;
  const StepsLine({
    super.key,   this.color1, this.color2, this.color3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:20.0,right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 4,
            width: 109,
            color: color1 != null? Colors.green:Colors.green[200],
          ),
          SizedBox(width: 4,),
          Container(
            height: 4,
            width: 109,
            color: color2 != null? Colors.green:Colors.green[200],
          ),
          SizedBox(width: 4,),
          Container(
            height: 4,
            width: 109,
            color: color3 != null? Colors.green:Colors.green[200],
          ),


        ],
      ),
    );
  }
}
