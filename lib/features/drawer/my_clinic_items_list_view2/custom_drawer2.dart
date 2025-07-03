import 'package:flutter/material.dart';

import 'drawer_items_list_view2.dart';

class CustomDrawer2 extends StatelessWidget {
  const CustomDrawer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: DrawerItemsListView2(),
    );
  }
}
