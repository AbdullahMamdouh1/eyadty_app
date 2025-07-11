import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../../../../../listing/presentation/views/widgets/title_text.dart';
import 'list_view_item_patients_hub.dart';
import 'table_patients_hub.dart';

class PatientsPageViewBody extends StatelessWidget {
  PatientsPageViewBody({super.key});
  final table5 = TablePatientsHub();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 32,
          ),
          TitleText(
            title: 'Patients Hub',
            subTitle:
                'Manage your clinic’s full patient database, including online and offline records.',
          ),
          sizedBox,
          Directionality(
              textDirection: TextDirection.rtl,
              child: CustomButton(
                onPressed: () {
                  context.push(Routes.addNewPatientView);
                },
                text: "Add New Patient",
                Width: 190,
                color: AppColors.greenColor,
                image: AppImages.imagesAdd,
              )),
          SizedBox(
            height: 32,
          ),
          Row(
            children: [
              SizedBox(
                  width: 90,
                  child: CustomButton3(
                    onPressed: () {},
                    text: 'All Offers',
                    color: Color(0xFFCFF7D3),
                    ColorText: AppColors.greenColor,
                  )),
              SizedBox(
                  width: 60,
                  child: CustomButton3(
                    onPressed: () {},
                    text: 'Active',
                    color: Color(0xFFCFF7D3),
                    ColorText: AppColors.greenColor,
                  )),
              SizedBox(
                  width: 90,
                  child: CustomButton3(
                    onPressed: () {},
                    text: 'Scheduled ',
                    color: Color(0xFFFFF1C2),
                    ColorText: Color(0xFF682D03),
                  )),
              SizedBox(
                  width: 70,
                  child: CustomButton3(
                    onPressed: () {},
                    text: 'Expired',
                    color: Color(0xFFFDD3D0),
                    ColorText: Color(0xFF900B09),
                  )),
            ],
          ),
          Row(
            children: [
              SizedBox(
                  width: 60,
                  child: CustomButton3(
                    onPressed: () {},
                    text: 'Draft',
                    color: Color(0xFFF5F5F5),
                    ColorText: Color(0xFF1E1E1E),
                  )),
              SizedBox(
                  width: 100,
                  child: CustomButton3(
                    onPressed: () {},
                    text: 'Deactivated',
                    color: Color(0xFFFDD3D0),
                    ColorText: Color(0xFF900B09),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          table5.TableShape(Child: ListViewItemPatientsHub(), height: 400),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
