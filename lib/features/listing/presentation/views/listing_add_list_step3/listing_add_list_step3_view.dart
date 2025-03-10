import 'package:eyadty_app/features/listing/presentation/views/listing_add_list_step3/widgets/listing_add_list_step3_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar.dart';

class ListingAddListStep3View extends StatelessWidget {
  const ListingAddListStep3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(118), // تحديد الارتفاع
          child: CustomAppBar(),
        ),
        body: SingleChildScrollView(
          child: ListingAddListStep3ViewBody(),
        ));
  }
}
