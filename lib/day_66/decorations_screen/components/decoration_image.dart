import 'package:flutter/material.dart';

import '../../model/decorations.dart';

class DecorationsImage extends StatelessWidget {
  final Decorations decoration;
  const DecorationsImage(this.decoration, {super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return SizedBox(
        width: constraints.maxWidth,
        height: constraints.maxHeight,
        child: Stack(
          children: [
            Positioned(
              bottom: 10,
              child: Container(
                width: constraints.maxWidth,
                height: 1,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 40,
                      spreadRadius: 10,
                      color: Colors.white.withOpacity(0.3),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              child: Image.asset(
                decoration.image,
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      );
    });
  }
}
