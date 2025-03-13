import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
 import '../../../../../auth/presentation/views/widgets/custom_check_box.dart';

class TablePromotion {
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
                        "Promotion Title	",
                        style: AppStyles.semiBold15,
                      ),
                      Text(
                        "Clinics              ",
                        style: AppStyles.semiBold15,
                      ),
                      Row(
                        children: [
                          Text(
                            "Validity \n Period	",
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

            RowButton(),
        ],
      ),
      Height: height,
    );
  }

  ////////////////////////////////  TableInformation

  TableInformation(
      {required String PatientName,
        required String Type,
        required String Date1,
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
            SizedBox(width: 30,),

            Flexible(
              child: Text(Date1,
                  style: AppStyles.regular15,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis),
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              child: Text(
                PatientName,
                style: AppStyles.regular15,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: 20),
            Flexible(
                child: Text(
                  Type,
                  style: AppStyles.regular15,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ))
          ],
        ),
      ),
    );
  }




  RowButton(){

    return  Container(
      color:  Colors.white,
      height: 65,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.add,size: 30,color: Colors.green,),
             SizedBox(width: 30,),

            Flexible(
              child: Text("Enter A Title of your offer",
                  style: AppStyles.regular15,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis),
            ),
            SizedBox(
              width: 20,
            ),
            Flexible(
              child: Text(
                "Select Clinic/s for offer",
                style: AppStyles.regular15,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: 20),
            Flexible(
                child: Text(
                  "Select Validity Dates",
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