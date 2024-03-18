import 'package:flutter/material.dart';

class Day70BackgroundScreen extends StatelessWidget {
  final Widget child;
  const Day70BackgroundScreen({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      height: size.height,
      child: SafeArea(
        child: Stack(
          children: [
            PositionedDirectional(
              end: 0,
              top: 0,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF56586E).withOpacity(.2),
                    blurRadius: 150,
                    spreadRadius: 50,
                  ),
                ]),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}
