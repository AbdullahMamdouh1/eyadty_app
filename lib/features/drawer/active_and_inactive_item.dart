import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/app_text_styles.dart';
import '../../models/drawer_item_model.dart';
import 'my_clinic_items_list_view2/custom_drawer2.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            drawerItemModel.title,
            style: AppStyles.semiBold15,
          ),
        ),
      ),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.MyClinicSelect,
  });

  final DrawerItemModel drawerItemModel;
  final bool MyClinicSelect;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Color(0xFFE0E3E7),
                  borderRadius: BorderRadius.circular(9999)),
              child: Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  SvgPicture.asset(
                    drawerItemModel.image,
                    color: AppColors.greenColor,
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    drawerItemModel.title,
                    style: AppStyles.semiBold15
                        .copyWith(color: AppColors.greenColor),
                  ),
                ],
              )),
          if (MyClinicSelect) CustomDrawer2(),
        ],
      ),
    );
  }
}
