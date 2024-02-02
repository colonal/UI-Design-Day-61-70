import 'package:flutter/material.dart';

class Day62BackgroundWidget extends StatelessWidget {
  final Widget child;
  const Day62BackgroundWidget({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          PositionedDirectional(
            start: 0,
            top: 0,
            child: Container(
              width: size.width,
              height: size.height * .6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF70A8FF).withOpacity(.2),
                    blurRadius: 100,
                    spreadRadius: 50,
                    offset: const Offset(-70, -70),
                  ),
                ],
              ),
            ),
          ),
          PositionedDirectional(
            start: 0,
            top: 0,
            child: Container(
              width: size.width * .8,
              height: size.height * .4,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFCADFFF).withOpacity(.4),
                    blurRadius: 100,
                    spreadRadius: 50,
                    offset: const Offset(-30, -70),
                  ),
                ],
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
