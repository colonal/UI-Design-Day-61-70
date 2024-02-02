import 'package:flutter/material.dart';

class CustomBackgroundPainter extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * .14, 0);
    path.quadraticBezierTo(0, 0, 0, size.height * .1);
    path.lineTo(0, size.height * .9);
    path.quadraticBezierTo(0, size.height, size.width * .14, size.height);
    path.lineTo(size.width * 0.63, size.height);
    path.cubicTo(
      size.width * 0.85,
      size.height,
      size.width * 0.7,
      size.height * 0.95,
      size.width * 0.79,
      size.height * 0.86,
    );
    path.cubicTo(
      size.width * 0.87,
      size.height * 0.78,
      size.width,
      size.height * 0.88,
      size.width,
      size.height * 0.75,
    );
    path.lineTo(size.width, size.height * .1);
    path.quadraticBezierTo(size.width, 0, size.width * .86, 0);
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
    path.lineTo(0, size.height * 0.3);
    path.quadraticBezierTo(
      size.width * 0.1,
      size.height * 0.34,
      size.width * 0.15,
      size.height * 0.5,
    );
    path.cubicTo(
      size.width * 0.19,
      size.height * 0.58,
      size.width * 0.25,
      size.height,
      size.width * 0.5,
      size.height,
    );
    path.cubicTo(
      size.width * 0.75,
      size.height,
      size.width * 0.8,
      size.height * 0.6,
      size.width * 0.85,
      size.height * 0.48,
    );
    path.quadraticBezierTo(
      size.width * 0.9,
      size.height * 0.34,
      size.width,
      size.height * 0.3,
    );
    path.lineTo(size.width * 1, 0);

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
      ..shader = LinearGradient(
        colors: [
          Colors.white.withOpacity(0),
          Colors.white.withOpacity(.9),
          Colors.white.withOpacity(0),
        ],
      ).createShader(Rect.fromPoints(
          Offset(0, size.height * 0.3), Offset(size.width, size.height * 0.3)))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5;

    Path path = Path();
    path.moveTo(0, size.height * 0.3);
    path.quadraticBezierTo(
      size.width * 0.1,
      size.height * 0.34,
      size.width * 0.15,
      size.height * 0.5,
    );
    path.cubicTo(
      size.width * 0.19,
      size.height * 0.58,
      size.width * 0.25,
      size.height * 0.99,
      size.width * 0.5,
      size.height,
    );
    path.cubicTo(
      size.width * 0.75,
      size.height,
      size.width * 0.8,
      size.height * 0.6,
      size.width * 0.85,
      size.height * 0.48,
    );
    path.quadraticBezierTo(
      size.width * 0.9,
      size.height * 0.34,
      size.width,
      size.height * 0.3,
    );

    path.moveTo(size.width, size.height * 0.3);
    canvas.drawPath(path, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
