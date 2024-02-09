import 'package:flutter/material.dart';

class BackgroundLineCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();

    path.moveTo(0, size.height);
    path.cubicTo(
      size.width * .2,
      size.height * 0,
      size.width * .3,
      size.height * 0.9,
      size.width * .5,
      size.height * .5,
    );
    path.cubicTo(
      size.width * .8,
      size.height * 0,
      size.width * .8,
      size.height * 0.9,
      size.width,
      0,
    );

    Paint paintStroke = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter
      ..shader = LinearGradient(
        colors: [
          Colors.white.withOpacity(0),
          Colors.white.withOpacity(.2),
          Colors.white.withOpacity(0),
        ],
      ).createShader(Rect.fromPoints(
          Offset(0, size.height * .3), Offset(size.width, size.height * .3)));

    canvas.drawPath(path, paintStroke);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
