 import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar.dart';
import '../../../../drawer/custom_drawer.dart';
import 'widgets/listing_add_list_step5_view_body.dart';

class ListingAddListStep5View extends StatelessWidget {
  const ListingAddListStep5View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomDrawer(),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(118), // تحديد الارتفاع
          child: CustomAppBar(),
        ),
        body: SingleChildScrollView(
          child: ListingAddListStep5ViewBody(),
        ));
  }
}
