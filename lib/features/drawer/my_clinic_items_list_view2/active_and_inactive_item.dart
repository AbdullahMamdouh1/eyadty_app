import 'package:eyadty_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/app_text_styles.dart';
import '../../../models/drawer_item_model.dart';

class InActiveDrawerItem2 extends StatelessWidget {
  const InActiveDrawerItem2({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItemModel.image),
      title: FittedBox(
        alignment: AlignmentDirectional.centerStart,
        fit: BoxFit.scaleDown,
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Text(
            drawerItemModel.title,
            style: AppStyles.semiBold15,
          ),
        ),
      ),
    );
  }
}

class ActiveDrawerItem2 extends StatelessWidget {
  const ActiveDrawerItem2({
    super.key,
    required this.drawerItemModel,
   });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 0),
      child: Column(
        children: [
          Container(
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(9999),
                  border: Border.all(color: AppColors.greenColor)),
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
        ],
      ),
    );
  }
}
