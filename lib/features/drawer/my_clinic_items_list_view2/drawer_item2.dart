import 'package:flutter/material.dart';

import '../../../models/drawer_item_model.dart';
import 'active_and_inactive_item.dart';

class DrawerItem2 extends StatelessWidget {
  const DrawerItem2(
      {super.key,
      required this.drawerItemModel,
      required this.isActive,
       });

  final DrawerItemModel drawerItemModel;
  final bool isActive;
   @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem2(
            drawerItemModel: drawerItemModel,
           )
        : InActiveDrawerItem2(drawerItemModel: drawerItemModel);
  }
}
