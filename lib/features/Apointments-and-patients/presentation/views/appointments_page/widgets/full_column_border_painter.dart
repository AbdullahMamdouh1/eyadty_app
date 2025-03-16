
// كلاس CustomPainter لرسم الحدود حول جميع الأعمدة
import 'package:flutter/material.dart';

class FullColumnBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xFFD9D9D9)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    const double spacing = 4;
    const double columnWidth = 45;
    const double columnSpacing = 10;

    for (int i = 0; i < 7; i++) {
      final double left = spacing + (i * (columnWidth + columnSpacing));

      final rect = Rect.fromLTWH(
        left,
        spacing,
        columnWidth,
        size.height - (1 * spacing),
      );

      canvas.drawRRect(
        RRect.fromRectAndRadius(rect, const Radius.circular(8)),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}