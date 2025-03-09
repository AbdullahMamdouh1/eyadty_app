import 'package:eyadty_app/features/listing/presentation/views/listing_add_list_step1/widgets/listing_add_list_step1_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar.dart';

class ListingAddListStep1View extends StatelessWidget {
  const ListingAddListStep1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(118), // تحديد الارتفاع
        child: CustomAppBar(),
      ),
       body: SingleChildScrollView(child: ListingAddListStep1ViewBody()),
    );
  }
}
