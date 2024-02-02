import 'package:flutter/material.dart';

class CustomBackgroundPainter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * .1, 0);
    path.quadraticBezierTo(0, 0, 0, size.height * .14);
    path.lineTo(0, size.height * .86);
    path.quadraticBezierTo(0, size.height, size.width * .1, size.height);
    path.lineTo(size.width * 0.63, size.height);
    path.cubicTo(
      size.width * 0.8,
      size.height,
      size.width * 0.85,
      size.height,
      size.width * 0.85,
      size.height * 0.84,
    );
    path.cubicTo(
      size.width * 0.88,
      size.height * 0.62,
      size.width,
      size.height * 0.82,
      size.width,
      size.height * 0.63,
    );
    path.lineTo(size.width, size.height * .14);
    path.quadraticBezierTo(size.width, 0, size.width * .94, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomShapePathClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width * 0.68, 0);
    path.quadraticBezierTo(
      size.width * 0.68,
      size.height * 0.1,
      size.width * 0.72,
      size.height * 0.15,
    );
    path.cubicTo(
      size.width * 0.8,
      size.height * 0.25,
      size.width,
      size.height * 0.33,
      size.width,
      size.height * 0.5,
    );
    path.cubicTo(
      size.width,
      size.height * 0.67,
      size.width * 0.79,
      size.height * 0.75,
      size.width * 0.72,
      size.height * 0.85,
    );
    path.quadraticBezierTo(
      size.width * 0.68,
      size.height * 0.89,
      size.width * 0.67,
      size.height,
    );
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CustomLineShapePathClipper extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = Colors.white
      ..shader = LinearGradient(
        colors: [
          Colors.white.withOpacity(.9),
          Colors.white.withOpacity(.3),
          Colors.white.withOpacity(.9),
        ],
      ).createShader(Rect.fromPoints(
          Offset(0, size.height * .3), Offset(size.width, size.height * .3)))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    Path path = Path();
    path.moveTo(size.width * 0.68, 0);
    path.quadraticBezierTo(
      size.width * 0.68,
      size.height * 0.1,
      size.width * 0.72,
      size.height * 0.15,
    );
    path.cubicTo(
      size.width * 0.8,
      size.height * 0.25,
      size.width,
      size.height * 0.33,
      size.width,
      size.height * 0.5,
    );
    path.cubicTo(
      size.width,
      size.height * 0.67,
      size.width * 0.79,
      size.height * 0.75,
      size.width * 0.72,
      size.height * 0.85,
    );
    path.quadraticBezierTo(
      size.width * 0.68,
      size.height * 0.89,
      size.width * 0.67,
      size.height,
    );

    canvas.drawPath(path, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
