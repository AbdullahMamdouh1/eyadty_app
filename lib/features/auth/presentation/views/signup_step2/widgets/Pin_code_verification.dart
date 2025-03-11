import 'dart:async';

import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../../generated/assets.dart';

class PinCodeVerification extends StatefulWidget {
  const PinCodeVerification({
    Key? key,
    this.phoneNumber,
  }) : super(key: key);

  final String? phoneNumber;

  @override
  State<PinCodeVerification> createState() => _PinCodeVerificationState();
}

class _PinCodeVerificationState extends State<PinCodeVerification> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  // ignore: close_sinks
  StreamController<ErrorAnimationType>? errorController;

  bool hasError = false;
  String currentText = "";
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  void dispose() {
    errorController!.close();

    super.dispose();
  }

  // snackBar Widget
  snackBar(String? message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message!),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        Text(
          'Enter the 6-digit code sent to to:',
          style: AppStyles.regular15.copyWith(color: AppColors.blackColor),
          textAlign: TextAlign.start,
        ),
        RichText(
          text: TextSpan(
              text: " +20 888 888 8888.",
              style: AppStyles.semiBold15.copyWith(color: Color(0xff245266))),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Not your number? ",
                  style: AppStyles.regular15,
                ),
                Text("Re enter your Phone ",
                    style: AppStyles.semiBold15
                        .copyWith(color: AppColors.blueColor)),
              ],
            ),
            Text("Number",
                style:
                    AppStyles.semiBold15.copyWith(color: AppColors.blueColor)),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8.0,
            ),
            child: PinCodeTextField(
              appContext: context,

              pastedTextStyle: TextStyle(
                color: Colors.green.shade600,
                fontWeight: FontWeight.bold,
              ),
              length: 6,
              obscureText: false,

              // obscuringCharacter: '*',

              blinkWhenObscuring: true,
              animationType: AnimationType.fade,
              validator: (v) {
                if (v!.length < 3) {
                  return "I'm from validator";
                } else {
                  return null;
                }
              },
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                selectedColor: Colors.grey,
                activeColor: Colors.green,
                inactiveColor: Colors.grey,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 50,
                fieldWidth: 40,
                activeFillColor: Colors.white,
              ),
              cursorColor: Colors.black,
              animationDuration: const Duration(milliseconds: 300),
              enableActiveFill: false,
              errorAnimationController: errorController,
              controller: textEditingController,
              keyboardType: TextInputType.number,
              boxShadows: const [
                BoxShadow(
                  offset: Offset(0, 1),
                  color: Colors.black12,
                  blurRadius: 10,
                )
              ],
              onCompleted: (v) {
                debugPrint("Completed");
              },
              // onTap: () {
              //   print("Pressed");
              // },
              onChanged: (value) {
                debugPrint(value);
                setState(() {
                  currentText = value;
                });
              },
              beforeTextPaste: (text) {
                debugPrint("Allowing to paste $text");
                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                return true;
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            hasError ? "*Please fill up all the cells properly" : "",
            style: const TextStyle(
              color: Colors.red,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Didn’t receive OTP? ",
                      style: AppStyles.regular15,
                    ),
                    GestureDetector(
                      onTap: () {
                        snackBar("OTP resend!!");
                      },
                      child: const Text(
                        "Resend Code ",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Text("after", style: AppStyles.semiBold15),
                  ],
                ),
                Text("00:59",
                    style: AppStyles.semiBold15
                        .copyWith(color: AppColors.blueColor)),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        CustomButton2(
          onPressed: () {
            formKey.currentState!.validate();
            // conditions for validating
            if (currentText.length != 6 || currentText != "123456") {
              errorController!.add(
                  ErrorAnimationType.shake); // Triggering error shake animation
              setState(() => hasError = true);
            } else {
              setState(
                () {
                  hasError = false;
                  snackBar("OTP Verified!!");
                },
              );
            }
          },
          text: "Verify My Account",
          color: AppColors.greenColor,
        ),
      ],
    );
  }
}
