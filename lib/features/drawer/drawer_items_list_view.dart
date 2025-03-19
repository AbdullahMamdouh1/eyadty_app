import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../core/utils/app_colors.dart';
import '../../generated/assets.dart';
import '../../models/drawer_item_model.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView>
    with RouteAware {
  int activeIndex = 0;
  bool MyClinicSelect = false;

  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'Listing', image: Assets.imagesLibraryAddCheck),
    const DrawerItemModel(
        title: 'My Clinic', image: Assets.imagesLibraryAddCheck),
    const DrawerItemModel(title: 'Shop', image: Assets.imagesStorefront),
    const DrawerItemModel(
        title: 'Profile and Settings', image: Assets.imagesSettings),
    const DrawerItemModel(
        title: 'Help and Support', image: Assets.imagesSupportAgent),
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPushNext() {
    setState(() {
      // عند الانتقال إلى شاشة جديدة، يمكن تحديث الحالة هنا
    });
  }

  @override
  void didPopNext() {
    setState(() {
      // عند الرجوع إلى هذه الشاشة، حدث المؤشر بناءً على الشاشة الحالية
      switch (ModalRoute.of(context)!.settings.name) {
        case '/employees':
          activeIndex = 2;
          break;

        case '/emplofyees':
          activeIndex = 2;
          break;
        default:
          activeIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              activeIndex = index;
              MyClinicSelect = (index == 2);
            });

            if (index == 3) {
              Navigator.pushNamed(context, 'EmployeesPageView');
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                DrawerItem(
                  drawerItemModel: items[index],
                  isActive: activeIndex == index,
                  MyClinicSelect: MyClinicSelect,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
