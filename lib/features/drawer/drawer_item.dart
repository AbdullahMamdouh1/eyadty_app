import 'package:flutter/material.dart';

import '../../models/drawer_item_model.dart';
import 'active_and_inactive_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key,
      required this.drawerItemModel,
      required this.isActive,
      required this.MyClinicSelect});

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  final bool MyClinicSelect;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(
            drawerItemModel: drawerItemModel,
            MyClinicSelect: MyClinicSelect,
          )
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
