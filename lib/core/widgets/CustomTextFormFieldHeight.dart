import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_text_styles.dart';

class Customtextformfieldheight extends StatelessWidget {
    final String? labelText;
   final dynamic controller;
  final dynamic validator;
  final dynamic autovalidateMode;
   var onChangedd;
  final String text;
  final String hintText;

  Customtextformfieldheight({
    super.key,
     this.labelText,
     this.controller,
    this.validator,
    this.autovalidateMode,
     required this.text,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyles.regular15,
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey)),
          child: TextFormField(
            maxLines: 3,
            autovalidateMode: autovalidateMode,
            onChanged: onChangedd,
            //  mount char maxLength:3,

            validator: validator,
            controller: controller,

            keyboardType: TextInputType.name,
            obscureText: false,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hintText,
                hintStyle: AppStyles.regular15.copyWith(
                  color: const Color(0xFFB3B3B3),
                ),
                labelStyle: TextStyle(
                  fontSize: 13,
                ),
                // labelText: labelTextr,

                // prefixIcon:Icon(prefixIconT,color: Colors.black45,) ,

                //suffixIcon: suffixIconn ,

                // to delete bordwes

                fillColor: Colors.white,
                filled: true),
          ),
        ),
      ],
    );
  }
}
