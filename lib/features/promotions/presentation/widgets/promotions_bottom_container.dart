import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/drop_down_container.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/promotions_table.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/shared_child_container.dart';
import 'package:flutter/material.dart';

class PromotionsBottomContainer extends StatelessWidget {
  const PromotionsBottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedChildContainer(
      child: Column(
        children: [
          DropDownContainer(
            isFromBottomContainer: true,
          ),
          verticalSpace(24),
          // Promotions Table
          PromotionsTable(),
        ],
      ),
    );
  }
}
