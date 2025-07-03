import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/custom_app_bar_of_promotions.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/new_campaign_final_bottom.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/new_campaing_step_4_column.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'shared_main_container.dart';

class NewCampaginStep4 extends StatelessWidget {
  const NewCampaginStep4({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CustomAppBar(
                text: 'Create New Campaign',
                textStyle: AppStyle.mainAppBar,
                onPressed: () {
                  context.pop();
                },
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: SharedParentContainer(child: NewCampaingStep4Column()),
            ),
            SliverToBoxAdapter(
              child: verticalSpace(42),
            )
          ],
        ),
        Positioned(
          bottom: 0,
          child: NewCampaignFinalBottom(
            nextOnPressed: () {
              // context.push(Routes.);
            },
          ),
        )
      ],
    );
  }
}
