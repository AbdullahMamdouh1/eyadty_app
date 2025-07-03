import 'package:eyadty_app/features/promotions/presentation/widgets/drop_down_container.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/shared_child_container.dart';
import 'package:flutter/material.dart';

class PromotionsBottomSection extends StatelessWidget {
  const PromotionsBottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedChildContainer(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DropDownContainer(
            isFromBottomContainer: true,
          ),
        ],
      ),
    );
  }
}
