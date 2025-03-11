import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../widgets/table_information.dart';

class BasicInformation extends StatelessWidget {
  BasicInformation({super.key});
  final table = Table1();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Basic Information",
          style: AppStyles.bold18,
        ),
        sizedBox,
        table.TableShape(
            Child: Column(
              children: [
                table.TableInformation(
                  FieldName: 'Clinic\n Name',
                  Details: 'John Doe’s Clinic',
                  onPressed: () {},
                  ColorBool: true,
                ),
                table.TableInformation(
                  FieldName: 'Phone\n Number',
                  Details: '+20 100 000 0000',
                  onPressed: () {},
                  ColorBool: false,
                ),
                table.TableInformation(
                  FieldName: 'Email\n Address',
                  Details: 'info@myclinic.com',
                  onPressed: () {},
                  ColorBool: true,
                ),
                table.TableInformation(
                  FieldName: 'Clinic\n Address',
                  Details: '123 Main Street......',
                  onPressed: () {},
                  ColorBool: false,
                ),
              ],
            ),
            height: 250),
      ],
    );
  }
}
