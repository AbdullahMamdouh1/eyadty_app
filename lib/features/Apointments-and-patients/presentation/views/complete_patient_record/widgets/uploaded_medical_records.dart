import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../listing/presentation/views/widgets/table_information.dart';
import 'table_record.dart';

class UploadedMedicalRecords extends StatelessWidget {
  UploadedMedicalRecords({super.key});
  final table = TableRecord();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Uploaded Medical Records",
          style: AppStyles.bold18,
        ),
        SizedBox(
          height: 5,
        ),
        table.TableShape(
            Child: Column(
              children: [
                table.TableInformation(
                  Date: 'Clinic\n Name',
                  Type: 'John Doe’s Clinic',
                  onPressed: () {},
                  ColorBool: true,
                ),
                table.TableInformation(
                  Date: 'Phone\n Number',
                  Type: '+20 100 000 0000',
                  onPressed: () {},
                  ColorBool: false,
                ),
                table.TableInformation(
                  Date: 'Email\n Address',
                  Type: 'info@myclinic.com',
                  onPressed: () {},
                  ColorBool: true,
                ),
                table.TableInformation(
                  Date: 'Clinic\n Address',
                  Type: '123 Main Street......',
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
