import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/routes.dart';
import '../../../core/utils/app_images.dart';
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

  final List<DrawerItemModel> items = [
    const DrawerItemModel(
        title: 'Appointments', image: AppImages.imagesPermContactCalendar),
    const DrawerItemModel(title: 'Patients', image: AppImages.imagesLocalHotel),
    const DrawerItemModel(
        title: 'Financial Records', image: AppImages.imagesMonetizationOn),
    const DrawerItemModel(
        title: 'Inventory Management', image: AppImages.imagesCategory),
    const DrawerItemModel(title: 'Employees', image: AppImages.imagesPeople),
    const DrawerItemModel(title: 'Promotions', image: AppImages.imagesPeople),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
        children: List.generate(
      6,
      (index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }

            switch (index) {
              case 0:
                context.push(Routes.appointmentsPageView);
                break;
              case 1:
                context.push(Routes.patientsPageView);
                break;
              case 3:
                context.push(Routes.manageListingPageView);
                break;
              case 4:
                context.push(Routes.employeesPageView);
                break;
              case 5:
                context.push(Routes.promotionsView);
              default:
                print("");
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
                ),
              ],
            ),
          ),
        );
      },
    ));
  }
}
