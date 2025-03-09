import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';



class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  Map<DateTime, List<Map<String, dynamic>>> sessions = {
    DateTime(2025, 1, 1): [
      {"count": 3, "color": Colors.green},
      {"count": 4, "color": Colors.yellow}
    ],
    DateTime(2025, 1, 5): [
      {"count": 12, "color": Colors.green}
    ],
    DateTime(2025, 1, 10): [
      {"count": 2, "color": Colors.red}
    ],
    DateTime(2025, 1, 15): [
      {"count": 4, "color": Colors.yellow}
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Manage Your Clinics")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              value: "January",
              items: ["January", "February", "March"].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {},
            ),
          ),
          TableCalendar(
            firstDay: DateTime.utc(2024, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            eventLoader: (day) {
              return sessions[day] ?? [];
            },
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              selectedDecoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            headerStyle: HeaderStyle(
              formatButtonVisible: false,
              titleCentered: true,
            ),
            calendarBuilders: CalendarBuilders(
              markerBuilder: (context, date, events) {
                if (events.isNotEmpty) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: events.map((event) {
                      final session = event as Map<String, dynamic>; // تحويل الكائن إلى Map
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: session["color"],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          "${session["count"]}",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      );
                    }).toList(),
                  );
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
