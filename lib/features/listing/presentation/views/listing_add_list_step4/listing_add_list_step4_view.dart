import 'package:eyadty_app/features/listing/presentation/views/listing_add_list_step3/widgets/listing_add_list_step3_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import 'widgets/listing_add_list_step4_view_body.dart';

class ListingAddListStep4View extends StatelessWidget {
  const ListingAddListStep4View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(118), // تحديد الارتفاع
          child: CustomAppBar(),
        ),
        body: SingleChildScrollView(
          child: ListingAddListStep4ViewBody(),
        ));
  }
}
