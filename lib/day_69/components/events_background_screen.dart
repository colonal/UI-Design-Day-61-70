import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventsBackgroundScreen extends StatelessWidget {
  final Widget child;
  const EventsBackgroundScreen({required this.child, super.key});

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
            Color(0xFF000000),
            Color(0xFF000000),
          ],
        ),
      ),
      child: SafeArea(
        child: Stack(
          children: [
            PositionedDirectional(
              start: 0,
              top: 0,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(.2),
                    blurRadius: 150,
                    spreadRadius: 50,
                  ),
                ]),
              ),
            ),
            PositionedDirectional(
              top: size.height * .5,
              end: -10,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(.1),
                    blurRadius: 150,
                    spreadRadius: 50,
                  ),
                ]),
              ),
            ),
            PositionedDirectional(
              top: size.height * .7,
              start: -10,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.white.withOpacity(.1),
                    blurRadius: 150,
                    spreadRadius: 50,
                  ),
                ]),
              ),
            ),
            PositionedDirectional(
              start: 0,
              top: 0,
              child: SvgPicture.asset(
                "assets/day69/left_dark.svg",
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
