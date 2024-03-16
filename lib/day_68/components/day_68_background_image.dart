import 'package:flutter/material.dart';

class Day68BackgroundImage extends StatelessWidget {
  final Widget child;
  const Day68BackgroundImage({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/day68/Image-Background.png"),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: SafeArea(child: child),
    );
  }
}
