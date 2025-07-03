import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/custom_app_bar_of_promotions.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/new_campaign_bottom_options.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import 'new_campaing_step_3_column.dart';
import 'shared_main_container.dart';

class NewCampaginStep3 extends StatelessWidget {
  const NewCampaginStep3({super.key});

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
              child: SharedParentContainer(child: NewCampaingStep3Column()),
            ),
            SliverToBoxAdapter(
              child: verticalSpace(42),
            )
          ],
        ),
        Positioned(
          bottom: 0,
          child: NewCampaignBottomOptions(
            nextOnPressed: () {
              context.push(Routes.newCampaign4);
            },
          ),
        )
      ],
    );
  }
}
