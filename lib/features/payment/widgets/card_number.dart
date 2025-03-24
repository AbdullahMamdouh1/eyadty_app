import 'package:eyadty_app/features/payment/widgets/save_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/widgets/custom_container_shape.dart';
import '../../../core/widgets/custom_text_field.dart';
import '../../../generated/assets.dart';

class CardNumber extends StatelessWidget {
  const CardNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.white,
        child: CustomContainerShape(
            Child: Padding(
          padding: const EdgeInsets.only(right: 21.0, left: 21, bottom: 21),
          child: Column(
            children: [
              CustomTextFormField2(
                  textInputType: TextInputType.name,
                  ispassword: false,
                  text: "",
                  hintText: "Cardholder Name"),
              CustomTextFormField2(
                  textInputType: TextInputType.name,
                  ispassword: false,
                  suffixIcon: SvgPicture.asset(Assets.imagesBadges),
                  text: "",
                  hintText: "Card Number"),
              CustomTextFormField2(
                  textInputType: TextInputType.name,
                  ispassword: false,
                  text: "",
                  hintText: "Expiry Date"),
              CustomTextFormField2(
                  textInputType: TextInputType.name,
                  ispassword: false,
                  text: "",
                  hintText: "CVV Code"),
              SizedBox(
                height: 30,
              ),
              SaveCard(
                onChanged: (bool value) {},
              )
            ],
          ),
        )),
      ),
    );
  }
}
