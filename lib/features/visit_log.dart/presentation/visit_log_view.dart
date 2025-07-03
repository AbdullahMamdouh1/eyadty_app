import 'package:eyadty_app/features/visit_log.dart/presentation/widgets/visit_log_body.dart';
import 'package:flutter/material.dart';

class VisitLogView extends StatelessWidget {
  const VisitLogView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VisitLogBody(),
    );
  }
}
