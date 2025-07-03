import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/custom_app_bar_of_promotions.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/promotions_bottom_options.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/promotions_bottom_section.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/promotions_middle_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'promotions_top_container.dart';
import 'shared_main_container.dart';

class PromotionsBody extends StatelessWidget {
  const PromotionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CustomAppBar(
                text: 'Manage Promotions',
                textStyle: AppStyle.mainAppBar,
                onPressed: () {
                  context.pop();
                },
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: SharedParentContainer(
                  child: Column(
                children: [
                  PromotionsTopContainer(),
                  verticalSpace(24),
                  PromotionsMiddleContainer(),
                  verticalSpace(24),
                  PromotionsBottomSection(),
                ],
              )),
            ),
            SliverToBoxAdapter(
              child: verticalSpace(42),
            )
          ],
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: PromotionsBottomOptions(),
        )
      ],
    );
  }
}
