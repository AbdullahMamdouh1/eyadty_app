import 'package:eyadty_app/core/utils/spacing.dart';
import 'package:eyadty_app/features/promotions/presentation/widgets/shared_child_container.dart';
import 'package:flutter/material.dart';

import 'drop_down_container.dart';
import 'top_container_item.dart';

class PromotionsTopContainer extends StatelessWidget {
  const PromotionsTopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedChildContainer(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        DropDownContainer(),
        verticalSpace(24),
        TopContainerItem(
          containerColor: Color(0xffC3D8D0).withValues(alpha: 0.38),
          titleColor: Color(0xff1A4D3A),
          title: 'Total Reach',
          number: '5',
          avatarColor: Color(0xffC4D9D1),
        ),
        verticalSpace(16),
        TopContainerItem(
          containerColor: Color(0xffCFF7D3),
          titleColor: Color(0xff02542D),
          title: 'Total Imporessions',
          number: '15',
          avatarColor: Color(0xffBCE0BF),
        ),
        verticalSpace(16),
        TopContainerItem(
          containerColor: Color(0xffFFF1C2),
          titleColor: Color(0xff975102),
          title: 'Marketing Generated Revenue',
          number: '25',
          avatarColor: Color(0xffE7DAB0),
        ),
      ],
    ));
  }
}
