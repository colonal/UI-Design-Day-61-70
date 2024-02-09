import 'package:flutter/material.dart';

import 'background_line_custom_painter.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget child;
  const BackgroundWidget({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    final int totalNumberOfLines = size.height ~/ 70;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentDirectional.topCenter,
                end: AlignmentDirectional.bottomCenter,
                colors: [Color(0xFF232131), Color(0xFF060611)],
              ),
            ),
            child: Stack(
              children: [
                Center(
                  child: Column(
                    children: [
                      ...List.generate(totalNumberOfLines, (_) {}).map(
                        (e) => CustomPaint(
                          size: const Size(double.infinity, 30),
                          painter: BackgroundLineCustomPainter(),
                        ),
                      )
                    ],
                  ),
                ),
                child,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
