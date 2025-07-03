import 'package:flutter/material.dart';

import 'widgets/campaign_history_body.dart';

class CampaignHistoryView extends StatelessWidget {
  const CampaignHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CampaignHistoryBody(),
    );
  }
}
