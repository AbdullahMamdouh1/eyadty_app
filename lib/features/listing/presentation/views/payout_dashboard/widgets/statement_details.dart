import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../widgets/table_information.dart';

class StatementDetails extends StatelessWidget {
  StatementDetails({super.key});
  final table = Table2();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Clinic Operations Details",
          style: AppStyles.bold18,
        ),
        sizedBox,
        table.TableShape(
            Child: Column(
              children: [
                SizedBox(
                  height: 345,
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return table.TableInformation(
                          Date1: 'Jan 5, 2025	',
                          PatientName: 'Ahmed Ali	',
                          ColorBool:
                              index % 2 == 0 ? Colors.grey[200] : Colors.white,
                          Type: 'Check-Up	',
                        );
                      }),
                ),
              ],
            ),
            height: 400),
      ],
    );
  }
}
