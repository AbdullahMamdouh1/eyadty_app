import 'package:flutter/material.dart';

import '../../../models/drawer_item_model.dart';
import 'active_and_inactive_item.dart';

class DrawerItem2 extends StatelessWidget {
  const DrawerItem2(
      {super.key,
      required this.drawerItemModel,
      required this.isActive,
      required this.rrr});

  final DrawerItemModel drawerItemModel;
  final bool isActive;
  final bool rrr;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem2(
            drawerItemModel: drawerItemModel,
            rrr: rrr,
          )
        : InActiveDrawerItem2(drawerItemModel: drawerItemModel);
  }
}
