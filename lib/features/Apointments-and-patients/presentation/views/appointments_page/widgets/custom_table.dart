import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../../core/widgets/custom_container_shape.dart';
import '../../../../../../generated/assets.dart';

class CustomTable {
  TableShape({required Child, required double height}) {
    return CustomContainerShape(
      Child: Column(
        children: [
          Container(
            color: Color(0xFFD8F0E7),
            height: 64,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Time",
                            style: AppStyles.semiBold15,
                          ),
                          SizedBox(width: 4,),
                          Icon(Icons.star,color: Colors.green,)
                        ],
                      ),
                      SizedBox(
                          height: 2,
                          width: 65,
                          child: Divider(
                            color: Color(0xFF246C51),
                          )),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text(
                            "Patient Name",
                            style: AppStyles.semiBold15,
                          ),
                          SizedBox(width: 30,),
                          Icon(Icons.star,color: Colors.green,)

                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "ClinicPayment",
                        style: AppStyles.semiBold15,
                      ),
                      Icon(Icons.star,color: Color(0xFF3C4553),)

                    ],
                  ),
                  Text(
                    "",
                    style: AppStyles.semiBold15,
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
          Child,
        ],
      ),
      Height: height,
    );
  }

  ////////////////////////////////  TableInformation

  TableInformation(
      { 
        required VoidCallback onPressed,
        required String Details,
        required String FieldName,required String FieldName2, required dynamic ColorBool}) {
    return Container(
      color: ColorBool  ,
      height: 64,
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      FieldName,
                      style: AppStyles.regular15,
                    ),
                    ],
                ),
                SizedBox(
                    height: 2,
                    width: 65,
                    child: Divider(
                      color: Color(0xFF246C51),
                    )),
                 Row(
                  children: [
                    Text(
                      FieldName2,
                      style: AppStyles.regular15,
                    ),

                  ],
                ),
              ],
            ),

            SizedBox(
              width: 60,
            ),
            Flexible(
              child: Text(
                Details,
                style: AppStyles.regular15,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Icon(Icons.star,color: Color(0xFF3C4553),),

            SizedBox(width: 20),
            GestureDetector(
                onTap: onPressed,
                child: Icon(Icons.star,color: Color(0xFF3C4553),)

            )
          ],
        ),
      ),
    );
  }
}