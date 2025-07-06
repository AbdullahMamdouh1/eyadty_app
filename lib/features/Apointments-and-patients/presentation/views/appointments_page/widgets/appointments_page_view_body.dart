import 'package:eyadty_app/features/Apointments-and-patients/presentation/views/appointments_page/widgets/custom_table.dart';
import 'package:flutter/material.dart';

import '../../../../../listing/presentation/views/widgets/title_text.dart';
import 'calendar.dart';
import 'list_view_item_appointments.dart';
import 'status_cards_row.dart';

class AppointmentsPageViewBody extends StatelessWidget {
  AppointmentsPageViewBody({super.key});
  final table = CustomTable();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, left: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 32,
          ),
          TitleText(
            title: "Manage Your Clinics",
            subTitle: "View, edit, and grow your clinic’s online presence. ",
          ),
          SizedBox(
            height: 30,
          ),
          Calendar(),
          Divider(),
          SizedBox(
            height: 12,
          ),
          StatusCardsRow(),
          SizedBox(
            height: 16,
          ),
          table.TableShape(Child: ListViewItemAppointments(), height: 400),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
