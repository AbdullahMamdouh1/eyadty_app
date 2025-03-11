import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_text_styles.dart';
import '../../../../../generated/assets.dart';

class LoginPageHero extends StatelessWidget {
  const LoginPageHero({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 560,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
            image: AssetImage(Assets.imagesLoginPageHero), fit: BoxFit.fill),
      ),
      child: GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0, left: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 82,
                decoration: BoxDecoration(
                    color: Color(0xFFE0E3E7),
                    borderRadius: BorderRadius.circular(9999),
                    border: Border.all(color: Color(0xFF5A687D))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.arrow_back),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "Back",
                      style: AppStyles.regular15
                          .copyWith(color: AppColors.blackColor),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
