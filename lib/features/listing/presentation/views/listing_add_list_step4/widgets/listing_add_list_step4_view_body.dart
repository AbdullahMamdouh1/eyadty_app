 import 'package:eyadty_app/core/helper_functions/on_generate_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../../core/widgets/custom_text_field.dart';
import '../../../../../../generated/assets.dart';
import '../../widgets/listing_end_buttons.dart';
import '../../widgets/listing_steps_line.dart';
import '../../widgets/title_text.dart';
import 'custom_buttons.dart';

class ListingAddListStep4ViewBody extends StatefulWidget {
  const ListingAddListStep4ViewBody({super.key});

  @override
  State<ListingAddListStep4ViewBody> createState() =>
      _ListingAddListStep4ViewBodyState();
}

class _ListingAddListStep4ViewBodyState
    extends State<ListingAddListStep4ViewBody> {
  final button = CustomButtons();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          ListingStepsLine(
            color1: AppColors.greenColor,
            color2: AppColors.greenColor,
            color3: AppColors.greenColor,
            color4: AppColors.greenColor,
          ),
          TitleText(
            Title: 'Step 4 of 5: Multimedia Uploads',
            SubTitle:
                'Upload your clinic’s logo, photos, and a profile picture to enhance your online presence.',
          ),
          sizedBox,
          CustomContainerShape(
            Child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  button.buildButton(
                      onPressedButton1: () {},
                      textButton1: "Upload Clinic Logo ",
                      imageButton1: Assets.imagesUpload),
                  sizedBox,
                  button.buildButton(
                      onPressedButton1: () {},
                      textButton1: "Upload Doctor Photo",
                      imageButton1: Assets.imagesUpload),
                  sizedBox,
                  button.buildButton(
                      onPressedButton1: () {},
                      textButton1: "Upload Clinic Photos",
                      imageButton1: Assets.imagesUpload),
                  sizedBox,
                  button.buildButton(
                      onPressedButton1: () {},
                      textButton1: "Upload Certifications",
                      imageButton1: Assets.imagesUpload),
                  sizedBox,
                  button.buildButton(
                      onPressedButton1: () {},
                      textButton1: "Upload Video",
                      imageButton1: Assets.imagesUpload),
                  SizedBox(
                    height: 80,
                  ),
                  FittedBox(
                    alignment: AlignmentDirectional.centerStart,
                    fit: BoxFit.scaleDown,
                    child: Row(
                      children: [
                        Image(image: AssetImage(Assets.imagesBody)),
                        SizedBox(
                          width: 8,
                        ),
                        Image(image: AssetImage(Assets.imagesBody)),
                      ],
                    ),
                  ),
                  sizedBox,
                  ListingEndButtons(
                    onPressedButton1: () {},
                    onPressedButton2: () {
                      context.push(AppRoutes.listingAddListStep5View);
                    },
                    onPressedButtonSave: () {},
                    onPressedButtonBack: () {
                      context.pop();
                    },
                    textButton1: 'Upload Your Image',
                    textButton2: 'Upload Multimedia',
                    imageButton1: Assets.imagesUpload,
                    Visible: false,
                  )
                ],
              ),
            ),
           ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
