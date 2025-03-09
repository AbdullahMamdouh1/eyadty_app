import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import 'widgets/listing_add_more-listing_view_body.dart';

class ListingAddMoreListingView extends StatelessWidget {
  const ListingAddMoreListingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(118), // تحديد الارتفاع
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(child: ListingAddMoreListingViewBody()),
    );
  }
}
