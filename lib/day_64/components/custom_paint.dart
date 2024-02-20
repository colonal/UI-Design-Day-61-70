import 'package:flutter/material.dart';

class RPSCustomPainter1 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(0, size.height);
    path_0.quadraticBezierTo(
      size.width * 0.11,
      size.height,
      size.width * 0.22,
      size.height * 0.98,
    );

    path_0.cubicTo(
      size.width * 0.28,
      size.height * 0.88,
      size.width * 0.25,
      size.height * 0.75,
      size.width * 0.49,
      size.height * 0.74,
    );
    path_0.cubicTo(
      size.width * 0.82,
      size.height * 0.75,
      size.width * 0.65,
      size.height * 0.92,
      size.width * 0.78,
      size.height,
    );
    path_0.quadraticBezierTo(
      size.width * 0.78,
      size.height,
      size.width,
      size.height,
    );
    path_0.lineTo(
      size.width,
      0,
    );
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}

class RPSCustomPainter3 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(
      size.width * 0.0005516,
      size.height * 0.0066113,
    );
    path_0.lineTo(
      0,
      size.height * 0.9973333,
    );
    path_0.lineTo(
      size.width * 0.1234783,
      size.height * 0.9946667,
    );
    path_0.quadraticBezierTo(
      size.width * 0.2304348,
      size.height * 1.0286667,
      size.width * 0.2243478,
      size.height * 0.9226667,
    );
    path_0.cubicTo(
      size.width * 0.2891304,
      size.height * 0.8770000,
      size.width * 0.2865217,
      size.height * 0.7483333,
      size.width * 0.4834783,
      size.height * 0.7400000,
    );
    path_0.cubicTo(
      size.width * 0.6917391,
      size.height * 0.7383333,
      size.width * 0.7013043,
      size.height * 0.8810000,
      size.width * 0.7739130,
      size.height * 0.9280000,
    );
    path_0.quadraticBezierTo(
      size.width * 0.7747826,
      size.height * 1.0310000,
      size.width * 0.8747826,
      size.height * 0.9986667,
    );
    path_0.lineTo(
      size.width,
      size.height,
    );
    path_0.lineTo(
      size.width,
      size.height * 0.0066667,
    );

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
