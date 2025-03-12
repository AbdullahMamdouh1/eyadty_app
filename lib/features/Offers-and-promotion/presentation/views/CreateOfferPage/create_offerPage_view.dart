import 'package:eyadty_app/features/Offers-and-promotion/presentation/views/CreateOfferPage/widgets/create_offerPage_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_app_bar.dart';

class CreateOfferpageView extends StatelessWidget {
  const CreateOfferpageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(118), // تحديد الارتفاع
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(child: CreateOfferpageViewBody()),
    );
  }
}
