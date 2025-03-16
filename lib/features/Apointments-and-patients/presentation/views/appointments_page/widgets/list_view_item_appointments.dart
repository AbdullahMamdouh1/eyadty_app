import 'package:flutter/material.dart';

import 'custom_table.dart';


class  ListViewItemAppointments extends StatelessWidget {
  ListViewItemAppointments({super.key});
  final table = CustomTable();


  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 326,
      child: ListView.builder(
        itemCount: 10,

        itemBuilder: (context, index) {
          return  table.TableInformation(ColorBool: index % 2 == 0 ? Colors.grey[200] : Colors.white, onPressed: (){}, Details: "Uptown", FieldName: "9:00 AM	", FieldName2: 'Mariam Hassan	');
    })
    );

}}