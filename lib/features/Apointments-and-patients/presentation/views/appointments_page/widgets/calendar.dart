import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:google_fonts/google_fonts.dart';

import 'full_column_border_painter.dart';
import 'select_day.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  // قائمة بالألوان المختلفة للصفوف
  final List<Color> colors = [
    Colors.white,
    Color(0xFFF5F5F5),
    Color(0xFFCFF7D3),
    Color(0xFFFFF1C2),
    Color(0xFFFDD3D0),
    Color(0xFFFFF1C2),
    Color(0xFFCFF7D3),
  ];

  // دالة لحساب رقم الصف الأفقي (0 إلى 5 كحد أقصى)
  int _getRowIndex(DateTime date) {
    int firstDayOfMonth = DateTime(date.year, date.month, 1).weekday;
    int adjustedDay = (date.day + firstDayOfMonth - 1);
    return adjustedDay ~/ 7;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // جدول التقويم
        Stack(
          children: [
            // رسم البوردر حول كل الأعمدة (الأيام)
            Positioned.fill(
              child: CustomPaint(
                painter: FullColumnBorderPainter(),
              ),
            ),
            TableCalendar(
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              calendarBuilders: CalendarBuilders(
                defaultBuilder: (context, day, focusedDay) {
                  // اختيار لون بناءً على رقم الصف
                  int rowIndex = _getRowIndex(day);
                  Color circleColor = colors[rowIndex % colors.length];
                  return Container(
                    margin: const EdgeInsets.all(4),
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      children: [
                        const SizedBox(height: 4),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: circleColor,
                          child: Text(
                            '${day.day}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.teal,
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
                titleTextStyle: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFCFF7D3),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SelectDay(selectedDay: _selectedDay),
      ],
    );
  }
}
