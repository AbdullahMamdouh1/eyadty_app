import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
 import '../../../../../../generated/assets.dart';
import '../../../../../auth/presentation/views/widgets/custom_check_box.dart';

class TablePatientsHub {
  TableShape({required Child, required double height}) {
    return CustomContainerShape(
      Child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                color: Color(0xFFD8F0E7),
                height: 45,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCheckBox(isChecked: false, onChecked: (bool value) {  },),
                      Text(
                        "Patient\n Name",
                        style: AppStyles.semiBold15,
                      ),
                      SvgPicture.asset(Assets.imagesSort),
                      Text(
                        "Phone ",
                        style: AppStyles.semiBold15,
                      ),
                      SvgPicture.asset(Assets.imagesSort),
                      Row(
                        children: [
                          Text(
                            "Email",
                            style: AppStyles.semiBold15,
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: AppColors.greenColor,
                thickness: 2.5,
                height: 0,
              ),
              SizedBox(
                height: 8,
              ),
              Child
            ],
          ),


        ],
      ),
     );
  }

  ////////////////////////////////  TableInformation

  TableInformation(
      {required String PatientName,
        required String Email,
        required String phone,
        required dynamic ColorBool}) {
    return Container(
      color: ColorBool ,
      height: 65,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomCheckBox(isChecked: false, onChecked: (bool value) {  },),
            SizedBox(width: 10,),

            Icon(Icons.perm_identity),
            SizedBox(width: 5,),

            Flexible(
              child: Text(PatientName,
                  style: AppStyles.regular15,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis),
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              child: Text(
                phone,
                style: AppStyles.regular15,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: 20),
            Flexible(
                child: Text(
                  Email,
                  style: AppStyles.regular15,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }









}