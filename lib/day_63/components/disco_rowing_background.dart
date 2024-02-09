import 'package:flutter/material.dart';

class DiscoRowingBackground extends StatelessWidget {
  final Widget child;
  const DiscoRowingBackground({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/day63/Image-Background.png"),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.0),
              Colors.black.withOpacity(.8),
            ],
          ),
        ),
        child: child,
      ),
    );
  }
}
