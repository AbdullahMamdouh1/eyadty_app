import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StatusCards extends StatelessWidget {
  const StatusCards(
      {super.key,
      required this.Title1,
      required this.SubTitle,
      required this.image,
      required this.TextColor});
  final String Title1;
  final String SubTitle;
  final String image;
  final Color TextColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: Stack(
        children: [
          SizedBox(
              width: 65,
              child: SvgPicture.asset(
                image,
                fit: BoxFit.fill,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Title1,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: TextColor),
                ),
                Text(
                  SubTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: TextColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
