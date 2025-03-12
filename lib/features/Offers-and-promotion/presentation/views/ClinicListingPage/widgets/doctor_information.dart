import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_text_styles.dart';
import '../../../../../listing/presentation/views/widgets/table_information.dart';

class DoctorInformation extends StatelessWidget {
  DoctorInformation({super.key});
  final table = Table1();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Doctor Information",
          style: AppStyles.bold18,
        ),
        sizedBox,
        table.TableShape(
            Child: Column(
              children: [
                table.TableInformation(
                  FieldName: 'Full Name',
                  Details: 'Dr. John Doe',
                  onPressed: () {},
                  ColorBool: true,
                ),
                table.TableInformation(
                  FieldName: 'Sub-\nSpecialty',
                  Details: '+20 100 000 0000',
                  onPressed: () {},
                  ColorBool: false,
                ),
                table.TableInformation(
                  FieldName: 'License \nNumber',
                  Details: 'info@myclinic.com',
                  onPressed: () {},
                  ColorBool: true,
                ),
                table.TableInformation(
                  FieldName: 'Graduation ',
                  Details: 'Cairo University, 2004',
                  onPressed: () {},
                  ColorBool: false,
                ),
                table.TableInformation(
                  FieldName: 'Other \nCertificates',
                  Details: 'Royal Collage, MD, PHD',
                  onPressed: () {},
                  ColorBool: true,
                ),
                table.TableInformation(
                  FieldName: 'Professional\n Summary	',
                  Details:
                      " Lorem ipsum dolor sit amet consectetur. At elit ac urna leo lectus ultricies risus. Laoreet purus tortor eu non bibendum facilisis sagittis lobortis at. Sit fames habitant lobortis quis mi. Commodo dui pellentesque morbi massa porttitor eu adipiscing.",
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
