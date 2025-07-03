import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../core/routing/routes.dart';
import '../../core/utils/app_images.dart';
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
    const DrawerItemModel(title: 'Dashboard', image: AppImages.imagesDashboard),
    const DrawerItemModel(
        title: 'Listing', image: AppImages.imagesLibraryAddCheck),
    const DrawerItemModel(
        title: 'My Clinic', image: AppImages.imagesLibraryAddCheck),
    const DrawerItemModel(title: 'Payment', image: AppImages.imagesStorefront),
    const DrawerItemModel(
        title: 'Profile and Settings', image: AppImages.imagesSettings),
    const DrawerItemModel(
        title: 'Help and Support', image: AppImages.imagesSupportAgent),
  ];

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

            switch (index) {
              case 1:
                context.push(Routes.listingAddMoreListingView);
                break;
              case 5:
                context.push(Routes.loginStep1View);
                break;
              case 3:
                context.push(Routes.paymentPageView);
                break;

              default:
                print("");
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
