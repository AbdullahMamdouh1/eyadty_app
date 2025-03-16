import 'package:flutter/material.dart';

import 'table_patients_hub.dart';

class ListViewItemPatientsHub extends StatelessWidget {
  ListViewItemPatientsHub({super.key});
  final table5 = TablePatientsHub();


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 345,
      child: ListView.builder(
        itemCount: 10,

        itemBuilder: (context, index) {
          return  table5.TableInformation(
              PatientName: "Ahmed Ali	",
              phone: "+20 123 456 7890	",
              Email: "example@example.com",
              ColorBool: index % 2 == 0 ? Colors.grey[200] : Colors.white);

        },),
    );
  }
}
