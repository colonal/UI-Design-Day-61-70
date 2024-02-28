import 'package:flutter/material.dart';

class CustomClipperPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9970000, size.height * -0.0134000);
    path_0.quadraticBezierTo(size.width * 0.8462500, size.height * 0.2236000,
        size.width * 0.5000000, size.height * 0.2200000);
    path_0.quadraticBezierTo(size.width * 0.2150000, size.height * 0.2195000, 0,
        size.height * 0.0100000);
    path_0.lineTo(0, size.height * 0.9900000);
    path_0.quadraticBezierTo(size.width * 0.2075000, size.height * 0.7735000,
        size.width * 0.4980000, size.height * 0.7600000);
    path_0.quadraticBezierTo(size.width * 0.8315000, size.height * 0.7785000,
        size.width, size.height * 1.0100000);

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return this != oldClipper;
  }
}
