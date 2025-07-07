import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/features/Offers/presentation/views/OffersListingPage/widgets/offers_listing_page_view_body.dart';
import 'package:eyadty_app/features/Offers/presentation/views/OffersListingPage/widgets/offers_view_bottom_option.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/spacing.dart';
import '../../../../promotions/presentation/widgets/custom_app_bar_of_promotions.dart';
import '../../../../promotions/presentation/widgets/promotions_bottom_container.dart';
import '../../../../promotions/presentation/widgets/promotions_middle_container.dart';
import '../../../../promotions/presentation/widgets/promotions_top_container.dart';
import '../../../../promotions/presentation/widgets/shared_main_container.dart';

class OffersListingPageView extends StatelessWidget {
  const OffersListingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
            SliverToBoxAdapter(
              child: CustomAppBar(
                text: 'Manage Offers',
                textStyle: AppStyle.mainAppBar,
                onPressed: () {
                  context.pop();
                },
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: SharedParentContainer(
                  child: Column(
                children: [
                  PromotionsTopContainer(),
                  verticalSpace(24),
                  PromotionsMiddleContainer(),
                  verticalSpace(24),
                  PromotionsBottomContainer(),
                  verticalSpace(24),
                  OffersListingPageViewBody(),
                ],
              )),
            ),
          ]),
          verticalSpace(24),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: OffersViewBottomOption(),
          )
        ],
      ),
    );
  }
}
