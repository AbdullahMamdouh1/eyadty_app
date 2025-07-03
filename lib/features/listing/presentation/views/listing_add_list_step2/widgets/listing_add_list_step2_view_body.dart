import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../../core/widgets/custom_text_field.dart';
import '../../../../../auth/presentation/views/widgets/custom_check_box.dart';
import '../../widgets/listing_end_buttons.dart';
import '../../widgets/listing_steps_line.dart';
import '../../widgets/title_text.dart';
import 'listing_addList_step2_controller.dart';

class ListingAddListStep2ViewBody extends StatefulWidget {
  const ListingAddListStep2ViewBody({super.key, required this.onChanged});
  final ValueChanged<bool> onChanged;

  @override
  State<ListingAddListStep2ViewBody> createState() =>
      _ListingAddListStep2ViewBodyState();
}

class _ListingAddListStep2ViewBodyState
    extends State<ListingAddListStep2ViewBody> {
  final formKey = GlobalKey<FormState>();
  final Controller = ListingAddListStep2Controller();

  bool Select = false;

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
          ),
          TitleText(
            Title: 'Step 2 of 5: Clinic Operations Details',
            SubTitle:
                'Set Payment, working hours and notification preferences.',
          ),
          sizedBox,
          CustomContainerShape(
            Child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /////////////////////1
                      CustomTextFormField2(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: Controller.ClinicFeesController,
                        ispassword: false,
                        textInputType: TextInputType.text,
                        text: 'Clinic Fees',
                        hintText: 'Enter Fees',
                      ),
                      sizedBox,
                      /////////////////////2
                      CustomTextFormField2(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: Controller.BankAccountController,
                        ispassword: false,
                        textInputType: TextInputType.text,
                        text: 'Bank Account',
                        hintText: 'XXXXX XXXXX XXXX',
                      ),
                      sizedBox,
                      ///////////////////3
                      CustomTextFormField2(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: Controller.IBANController,
                        ispassword: false,
                        textInputType: TextInputType.text,
                        text: 'IBAN',
                        hintText: 'XXXXX XXXXX XXXXX XXXXX XXXX',
                      ),

                      sizedBox,
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Working Hours",
                              style: AppStyles.bold18,
                            ),
                            sizedBox,
                            Column(
                              children: [
                                /////////////////////start
                                CustomTextFormField2(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  widget: CustomCheckBox(
                                    isChecked: Select,
                                    onChecked: (bool value) {
                                      Select = value;
                                      widget.onChanged(value);
                                      setState(() {});
                                    },
                                  ),
                                  controller: Controller.SundayStartController,
                                  ispassword: false,
                                  textInputType: TextInputType.text,
                                  text: 'Sunday',
                                  hintText: 'Start Hour',
                                ),

                                /////////////////////////end
                                Controller.builEndField(
                                    Controller.SundayEndController)
                              ],
                            ),
                            sizedBox,
                            Column(
                              children: [
                                /////////////////////start
                                CustomTextFormField2(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  widget: CustomCheckBox(
                                    isChecked: Select,
                                    onChecked: (bool value) {
                                      Select = value;
                                      setState(() {});
                                    },
                                  ),
                                  controller: Controller.MondayStartController,
                                  ispassword: false,
                                  textInputType: TextInputType.text,
                                  text: 'Monday',
                                  hintText: 'Start Hour',
                                ),

                                /////////////////////////end
                                Controller.builEndField(
                                    Controller.MondayEndController)
                              ],
                            ),
                            sizedBox,
                            Column(
                              children: [
                                /////////////////////start
                                CustomTextFormField2(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  widget: CustomCheckBox(
                                    isChecked: Select,
                                    onChecked: (bool value) {
                                      Select = value;
                                      setState(() {});
                                    },
                                  ),
                                  controller: Controller.TuesdayStartController,
                                  ispassword: false,
                                  textInputType: TextInputType.text,
                                  text: 'Tuesday ',
                                  hintText: 'Start Hour',
                                ),

                                /////////////////////////end
                                Controller.builEndField(
                                    Controller.TuesdayEndController)
                              ],
                            ),
                            sizedBox,
                            Column(
                              children: [
                                /////////////////////start
                                CustomTextFormField2(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  widget: CustomCheckBox(
                                    isChecked: Select,
                                    onChecked: (bool value) {
                                      Select = value;
                                      setState(() {});
                                    },
                                  ),
                                  controller:
                                      Controller.WednesdayStartController,
                                  ispassword: false,
                                  textInputType: TextInputType.text,
                                  text: 'Wednesday',
                                  hintText: 'Start Hour',
                                ),

                                Controller.builEndField(
                                    Controller.WednesdayEndController),
                              ],
                            ),
                            sizedBox,
                            Column(
                              children: [
                                /////////////////////start
                                CustomTextFormField2(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  widget: CustomCheckBox(
                                    isChecked: Select,
                                    onChecked: (bool value) {
                                      Select = value;
                                      setState(() {});
                                    },
                                  ),
                                  controller:
                                      Controller.ThursdayStartController,
                                  ispassword: false,
                                  textInputType: TextInputType.text,
                                  text: 'Thursday ',
                                  hintText: 'Start Hour',
                                ),

                                /////////////////////////end
                                Controller.builEndField(
                                    Controller.ThursdayEndController)
                              ],
                            ),
                            sizedBox,
                            Column(
                              children: [
                                /////////////////////start
                                CustomTextFormField2(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  widget: CustomCheckBox(
                                    isChecked: Select,
                                    onChecked: (bool value) {
                                      Select = value;
                                      setState(() {});
                                    },
                                  ),
                                  controller: Controller.FridayStartController,
                                  ispassword: false,
                                  textInputType: TextInputType.text,
                                  text: 'Friday',
                                  hintText: 'Start Hour',
                                ),

                                /////////////////////////end
                                Controller.builEndField(
                                    Controller.FridayEndController)
                              ],
                            ),
                            sizedBox,
                            Column(
                              children: [
                                /////////////////////start
                                CustomTextFormField2(
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  widget: CustomCheckBox(
                                    isChecked: Select,
                                    onChecked: (bool value) {
                                      Select = value;
                                      setState(() {});
                                    },
                                  ),
                                  controller:
                                      Controller.SaturdayStartController,
                                  ispassword: false,
                                  textInputType: TextInputType.text,
                                  text: 'Saturday ',
                                  hintText: 'Start Hour',
                                ),

                                /////////////////////////end
                                Controller.builEndField(
                                    Controller.SaturdayEndController),
                              ],
                            ),
                          ],
                        ),
                      ),
                      sizedBox,
                      CustomTextFormField2(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: Controller.StreetController,
                        ispassword: false,
                        textInputType: TextInputType.text,
                        text: 'How would you like to be notified?',
                        hintText: '123 Main Street',
                      ),
                      sizedBox,
                      CustomTextFormField2(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: Controller.PhoneNumberController,
                        ispassword: false,
                        textInputType: TextInputType.text,
                        text: 'Phone Number',
                        hintText: '+20 100 000 0000',
                      ),
                      sizedBox,
                      CustomTextFormField2(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                        controller: Controller.EmailController,
                        ispassword: false,
                        textInputType: TextInputType.text,
                        text: 'Email Address',
                        hintText: 'info@myclinic.com',
                      ),

                      sizedBox,

                      ListingEndButtons(
                        onPressedButton1: () {},
                        onPressedButton2: () {
                          context.push(Routes.listingAddListStep3View);
                        },
                        onPressedButtonSave: () {},
                        onPressedButtonBack: () {
                          context.pop();
                        },
                        textButton1: 'Pin Location on Map',
                        textButton2: 'Add Operational Information',
                        imageButton1: AppImages.imagesAddLocationAlt,
                        Visible: true,
                      )
                    ],
                  )),
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
