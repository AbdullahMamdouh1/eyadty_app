import 'package:flutter/widgets.dart';

import '../../../generated/assets.dart';
import '../../../models/drawer_item_model.dart';
import 'drawer_item2.dart';

class DrawerItemsListView2 extends StatefulWidget {
  const DrawerItemsListView2({
    super.key,
  });

  @override
  State<DrawerItemsListView2> createState() => _DrawerItemsListView2State();
}

class _DrawerItemsListView2State extends State<DrawerItemsListView2> {
  int activeIndex = 0;
  bool eee = false;

  final List<DrawerItemModel> items = [
    const DrawerItemModel(
        title: 'Appointments', image: Assets.imagesPermContactCalendar),
    const DrawerItemModel(title: 'Patients', image: Assets.imagesLocalHotel),
    const DrawerItemModel(
        title: 'Financial Records', image: Assets.imagesMonetizationOn),
    const DrawerItemModel(
        title: 'Inventory Management', image: Assets.imagesCategory),
    const DrawerItemModel(title: 'Employees', image: Assets.imagesPeople),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }

            if (activeIndex == index) {
              setState(() {
                activeIndex = index;
                eee = (index == 1);
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                // if (eee) Text("data"),

                DrawerItem2(
                  drawerItemModel: items[index],
                  isActive: activeIndex == index,
                  rrr: eee,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
