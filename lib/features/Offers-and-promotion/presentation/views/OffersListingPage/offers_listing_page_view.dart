import 'package:eyadty_app/features/Offers-and-promotion/presentation/views/OffersListingPage/widgets/offers_listing_page_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../drawer/custom_drawer.dart';

class OffersListingPageView extends StatelessWidget {
  const OffersListingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(118), // تحديد الارتفاع
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(child: OffersListingPageViewBody()),
    );
  }
}
