import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/drop_down_container.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/promotions_graph.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/shared_child_container.dart';
import 'package:flutter/material.dart';

class PromotionsMiddleContainer extends StatelessWidget {
  const PromotionsMiddleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedChildContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DropDownContainer(
            isFromMiddleContainer: true,
          ),
          verticalSpace(24),
          PromotionsGraph(),
        ],
      ),
    );
  }
}
