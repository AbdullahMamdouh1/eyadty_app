import 'package:eyadty_app/core/routing/routes.dart';
import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/core/utils/app_images.dart';
import 'package:eyadty_app/features/Offers/presentation/views/OffersListingPage/widgets/offers_view_bottom_option.dart';
import 'package:eyadty_app/features/inventory_management/presentation/widgets/inventory_management_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/spacing.dart';
import '../../promotions/presentation/widgets/custom_app_bar_of_promotions.dart';

class InventoryManagementView extends StatelessWidget {
  const InventoryManagementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
            SliverToBoxAdapter(
              child: CustomAppBar(
                text: 'Inventory Management',
                textStyle: AppStyle.mainAppBar,
                onPressed: () {
                  context.pop();
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                child: InventoryManagementBody(),
              ),
            ),
          ]),
          verticalSpace(24),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: OffersViewBottomOption(
              text: 'Add Item',
              imagePath: AppImages.imagesPlus,
              nextRoute: Routes.addItemFromInventoryView,
            ),
          )
        ],
      ),
    );
  }
}
