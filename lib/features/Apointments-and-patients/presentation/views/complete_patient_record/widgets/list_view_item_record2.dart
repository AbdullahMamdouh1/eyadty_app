import 'package:flutter/material.dart';

import 'custom_table_record2.dart';

class ListViewItemRecord2 extends StatelessWidget {
  ListViewItemRecord2({super.key});
  final table = CustomTableRecord2();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 326,
        child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return table.TableInformation(
                  ColorBool: index % 2 == 0 ? Colors.grey[200] : Colors.white,
                  onPressed: () {},
                  Details: "Date",
                  FieldName: "9:00 AM	",
                  FieldName2: 'Ahmed Ali');
            }));
  }
}
