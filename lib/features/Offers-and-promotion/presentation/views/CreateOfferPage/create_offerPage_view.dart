import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/features/Offers-and-promotion/presentation/views/CreateOfferPage/widgets/create_offer_bottom_options.dart';
import 'package:eyadty_app/features/Offers-and-promotion/presentation/views/CreateOfferPage/widgets/create_offer_first_column.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/custom_app_bar_of_promotions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateOfferpageView extends StatelessWidget {
  const CreateOfferpageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CustomAppBar(
                  text: 'Create a New Offer',
                  textStyle: AppStyle.mainAppBar,
                  onPressed: () {
                    context.pop();
                  },
                ),
              ),
              SliverFillRemaining(
                  hasScrollBody: false, child: CreateOfferFirstColumn())
            ],
          ),
          Positioned(bottom: 0, child: CreateOfferBottomOptions())
        ],
      ),
    );
  }
}
