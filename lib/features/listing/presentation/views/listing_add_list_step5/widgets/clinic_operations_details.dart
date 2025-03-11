import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../widgets/table_information.dart';

class ClinicOperationsDetails extends StatelessWidget {
  ClinicOperationsDetails({super.key});
  final table = Table1();
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
                table.TableInformation(
                  FieldName: 'Working \n Hours',
                  Details: 'Sunday to Thursday, 2.00 Pm to 11.00 Pm',
                  onPressed: () {},
                  ColorBool: true,
                ),
                table.TableInformation(
                  FieldName: 'Notification \n Reference',
                  Details: 'SMS',
                  onPressed: () {},
                  ColorBool: false,
                ),
                table.TableInformation(
                  FieldName: 'Phone\n Number',
                  Details: '+20 100 000 0000',
                  onPressed: () {},
                  ColorBool: true,
                ),
                table.TableInformation(
                  FieldName: 'Email',
                  Details: 'example@myclinic.com',
                  onPressed: () {},
                  ColorBool: false,
                ),
                table.TableInformation(
                  FieldName: 'Fees ',
                  Details: '500 EGP',
                  onPressed: () {},
                  ColorBool: true,
                ),
                table.TableInformation(
                  FieldName: 'Bank\n Account',
                  Details: 'XXXXX XXXXX 1234',
                  onPressed: () {},
                  ColorBool: false,
                ),
              ],
            ),
            height: 335),
      ],
    );
  }
}
