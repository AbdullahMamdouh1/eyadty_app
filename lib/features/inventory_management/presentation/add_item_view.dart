import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/features/inventory_management/presentation/widgets/add_item_body.dart';
import 'package:eyadty_app/features/inventory_management/presentation/widgets/add_item_bottom_options.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/custom_app_bar_of_promotions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddItemView extends StatelessWidget {
  const AddItemView({super.key});

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
                  text: 'Add Item',
                  textStyle: AppStyle.mainAppBar,
                  onPressed: () {
                    context.pop();
                  },
                ),
              ),
              SliverFillRemaining(hasScrollBody: false, child: AddItemBody())
            ],
          ),
          Positioned(bottom: 0, child: AddItemBottomOptions())
        ],
      ),
    );
  }
}
