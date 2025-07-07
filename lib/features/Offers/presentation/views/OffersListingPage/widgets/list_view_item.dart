import 'package:flutter/material.dart';

import 'table_promotion.dart';

class ListViewItem extends StatelessWidget {
    ListViewItem({super.key});
  final table5 = TablePromotion();


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 280,
      child: ListView.builder(
        itemCount: 5,

        itemBuilder: (context, index) {
          return  table5.TableInformation(
              PatientName: "10% Off for New Patients	",
              Type: "XYZ Dental Clinic	",
              Date1: "Jan 1, 2025 – Jan 31, 2025	",
              ColorBool: index % 2 == 0 ? Colors.grey[200] : Colors.white);

        },),
    );
  }
}
