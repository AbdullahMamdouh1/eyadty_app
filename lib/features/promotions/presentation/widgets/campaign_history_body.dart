import 'package:eyadty_app/core/style/app_style.dart';
import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/campaign_history_bottom_options.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/custom_app_bar_of_promotions.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/promotions_table.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/routes.dart';
import 'shared_main_container.dart';

class CampaignHistoryBody extends StatelessWidget {
  const CampaignHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CustomAppBar(
                text: 'Campaign History',
                textStyle: AppStyle.mainAppBar,
                onPressed: () {
                  context.pop();
                },
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: SharedParentContainer(child: PromotionsTable()),
            ),
            SliverToBoxAdapter(
              child: verticalSpace(42),
            )
          ],
        ),
        Positioned(
          bottom: 0,
          child: CampaignHistoryBottomOptions(
            nextOnPressed: () {
              context.push(Routes.newCampaign1);
            },
          ),
        )
      ],
    );
  }
}
