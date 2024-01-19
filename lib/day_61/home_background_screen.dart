import 'package:flutter/material.dart';

class HomeBackgroundScreen extends StatelessWidget {
  final Widget child;
  const HomeBackgroundScreen({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.translate(
          offset: const Offset(-80, -80),
          child: Container(
            width: 350,
            height: 350,
            decoration: ShapeDecoration(
              shape: const OvalBorder(),
              shadows: [
                BoxShadow(
                  color: const Color(0xFFE1232A).withOpacity(.5),
                  blurRadius: 150,
                  spreadRadius: 10,
                )
              ],
            ),
          ),
        ),
        Transform.translate(
          offset: const Offset(-120, -120),
          child: Container(
            width: 216,
            height: 216,
            decoration: ShapeDecoration(
              shape: const OvalBorder(),
              shadows: [
                BoxShadow(
                  color: const Color(0xFFF09705).withOpacity(.9),
                  blurRadius: 110,
                  spreadRadius: 1,
                ),
              ],
            ),
          ),
        ),
        PositionedDirectional(
          bottom: 1,
          end: 0,
          child: Transform.translate(
            offset: const Offset(50, 50),
            child: Container(
              width: 350,
              height: 50,
              decoration: ShapeDecoration(
                shape: const OvalBorder(),
                shadows: [
                  BoxShadow(
                    color: const Color(0xFFE1232A).withOpacity(.5),
                    blurRadius: 150,
                    spreadRadius: 10,
                  )
                ],
              ),
            ),
          ),
        ),
        SafeArea(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: child,
          ),
        ),
      ],
    );
  }
}
