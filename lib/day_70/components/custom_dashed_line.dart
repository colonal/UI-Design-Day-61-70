import 'package:flutter/material.dart';

class CustomDashedLine extends StatelessWidget {
  final Color color;
  const CustomDashedLine(this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          5,
          (index) => Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Container(
                width: 1,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
