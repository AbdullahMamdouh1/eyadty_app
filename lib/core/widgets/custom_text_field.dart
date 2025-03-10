import 'package:flutter/material.dart';

import '../utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.textInputType,
       this.onSaved,
      this.obscureText = false,
      required this.text, this.suffixIcon,  });
  final String hintText;
  final TextInputType textInputType;
  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool obscureText;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 18,),
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: obscureText,
          onSaved: onSaved,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'هذا الحقل مطلوب';
            }
            return null;
          },
          keyboardType: textInputType,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintStyle: TextStyles.regular15.copyWith(
              color: const Color(0xFF949D9E),
            ),
            hintText: hintText,
            filled: true,
            fillColor: Colors.white,
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        width: 1,
        color: Colors.grey,
      ),
    );
  }
}

////2///////////////////////////////////////////

class CustomTextFormField2 extends StatelessWidget {
  final TextInputType textInputType;
  final bool ispassword;
  final String ?labelText;
  final IconData ?prefixIcon;
  final dynamic controller;
  final dynamic validator;
  final dynamic autovalidateMode;
  final Widget ? suffixIcon;
  var onChangedd;
  final String text;
  final String hintText;
  final Widget? widget;


  CustomTextFormField2({
    super.key,
    required this.textInputType,
    required this.ispassword,
      this.labelText,
      this.prefixIcon,
    this.controller,
    this.validator,
    this.autovalidateMode,
      this.suffixIcon,
    required this.text, required this.hintText, this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(child: widget),
            SizedBox(width: 12,),

            Text(
              text,
              style: TextStyles.regular15,
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          autovalidateMode: autovalidateMode,
          onChanged: onChangedd,
          //  mount char maxLength:3,

          validator: validator,
          controller: controller,

          keyboardType: textInputType,
          obscureText: ispassword,
          decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyles.regular15.copyWith(
                color: const Color(0xFFB3B3B3),
              ),
              focusColor: Colors.red,
              labelStyle: TextStyle(
                fontSize: 13,
              ),
              // labelText: labelTextr,

              // prefixIcon:Icon(prefixIconT,color: Colors.black45,) ,

              //suffixIcon: suffixIconn ,

              // to delete bordwes
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      style: BorderStyle.solid, color: Colors.black26),
                  borderRadius: BorderRadius.circular(12)),
              errorBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(style: BorderStyle.solid, color: Colors.red),
                  borderRadius: BorderRadius.circular(30)),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(style: BorderStyle.solid, color: Colors.red),
                borderRadius: BorderRadius.circular(12),
              ),
              fillColor: Colors.white,
              filled: true),
        ),
      ],
    );
  }
}





