import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/features/Offers/presentation/views/CreateOfferPage/widgets/create_offer_bottom_options.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/custom_app_bar_of_promotions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/routing/routes.dart';
import 'widgets/listing_add_list_step5_view_body.dart';

class ClinicListingPageView extends StatelessWidget {
  const ClinicListingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(physics: BouncingScrollPhysics(), slivers: [
            SliverToBoxAdapter(
              child: CustomAppBar(
                text: 'Page Title',
                textStyle: AppStyle.mainAppBar,
                onPressed: () {
                  context.pop();
                },
              ),
            ),
            SliverFillRemaining(
                hasScrollBody: false, child: ClinicListingPageViewBody()),
          ]),
          Positioned(
            bottom: 0,
            child: CreateOfferBottomOptions(
              nextRoute: Routes.offersListingPageView,
            ),
          ),
        ],
      ),
    );
  }
}
