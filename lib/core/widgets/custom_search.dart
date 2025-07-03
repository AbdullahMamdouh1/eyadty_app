import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_images.dart';
import '../utils/app_text_styles.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 40,
        width: 50,
        child: TextFormField(
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SvgPicture.asset(
                AppImages.imagesSearch,
                height: 16,
                width: 12,
              ),
            ),
            hintStyle: AppStyles.regular15.copyWith(
              color: const Color(0xFF949D9E),
            ),
            hintText: "Find what you need quickly...",
            filled: true,
            fillColor: Colors.white,
            border: buildBorder(),
            enabledBorder: buildBorder(),
            focusedBorder: buildBorder(),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(9999),
      borderSide: const BorderSide(
        width: 1,
        color: Color(0xFFD9D9D9),
      ),
    );
  }
}
