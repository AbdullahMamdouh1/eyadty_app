import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_images.dart';
import 'status_cards.dart';

class StatusCardsRow extends StatelessWidget {
  const StatusCardsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      alignment: AlignmentDirectional.centerStart,
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StatusCards(
            Title1: 'All',
            image: AppImages.imagesHighlight1,
            SubTitle: '1',
            TextColor: Color(0xFF1B523D),
          ),
          SizedBox(
            width: 5,
          ),
          StatusCards(
            Title1: 'Comp\nleted',
            image: AppImages.imagesHighlight2,
            SubTitle: '1',
            TextColor: Color(0xFF1E1E1E),
          ),
          SizedBox(
            width: 5,
          ),
          StatusCards(
            Title1: 'Pre-\nPaid',
            image: AppImages.imagesHighlight3,
            SubTitle: '1',
            TextColor: Color(0xFF02542D),
          ),
          SizedBox(
            width: 5,
          ),
          StatusCards(
            Title1: "Cance\ned ",
            image: AppImages.imagesHighlight4,
            SubTitle: '1',
            TextColor: Color(0xFF900B09),
          ),
          SizedBox(
            width: 5,
          ),
          StatusCards(
            Title1: 'Pending \nPayment',
            image: AppImages.imagesHighlight5,
            SubTitle: '1',
            TextColor: Color(0xFF975102),
          ),
        ],
      ),
    );
  }
}
