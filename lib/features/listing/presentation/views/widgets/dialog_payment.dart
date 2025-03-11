import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../generated/assets.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../../auth/presentation/views/widgets/custom_check_box.dart';

class DialogPayment extends StatefulWidget {
  const DialogPayment({super.key});

  @override
  State<DialogPayment> createState() => _DialogPaymentState();
}

class _DialogPaymentState extends State<DialogPayment> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.close),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Confirm Your Listing Submission',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "You are about to submit your clinic listing for verification. Please ensure all details are accurate. Once submitted, your listing will be reviewed, and you will be notified of the approval status within 24-48 hours.",
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                  ),
                  sizedBox,
                  Row(
                    children: [
                      CustomCheckBox(
                        onChecked: (value) {
                          isTermsAccepted = value;
                        },
                        isChecked: isTermsAccepted,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Flexible(
                          child: Text(
                        "I confirm that the information provided is accurate and complete.",
                        style: AppStyles.regular15,
                        maxLines: 2,
                      ))
                    ],
                  ),
                  sizedBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black54),
                              borderRadius: BorderRadius.circular(
                                8,
                              ),
                            ),
                            backgroundColor: Color(0xFFE0E3E7),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Review",
                            style: AppStyles.regular15.copyWith(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      SizedBox(
                          width: 90,
                          height: 40,
                          child: CustomButton2(
                            onPressed: () {},
                            text: 'Submit',
                            color: AppColors.greenColor,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
