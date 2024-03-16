import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Day69BackgroundScreen extends StatelessWidget {
  final Widget child;
  const Day69BackgroundScreen({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [
            Color(0xFFFFDD66),
            Color(0xFFE1813C),
          ],
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            PositionedDirectional(
              start: 0,
              top: 0,
              child: SvgPicture.asset("assets/day69/right.svg"),
            ),
            PositionedDirectional(
              end: 0,
              top: 0,
              child: SvgPicture.asset("assets/day69/left.svg"),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
