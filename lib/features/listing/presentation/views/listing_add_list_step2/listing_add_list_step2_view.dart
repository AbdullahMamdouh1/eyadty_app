import 'package:eyadty_app/features/listing/presentation/views/listing_add_list_step2/widgets/listing_add_list_step2_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../drawer/custom_drawer.dart';

class ListingAddListStep2View extends StatelessWidget {
  const ListingAddListStep2View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(118), // تحديد الارتفاع
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(child: ListingAddListStep2ViewBody(onChanged: (bool value) {  },) ),
    );
  }
}
