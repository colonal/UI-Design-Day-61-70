import 'package:flutter/material.dart';

class DashedLineWidget extends StatelessWidget {
  final double width;
  final Color color;
  const DashedLineWidget(
      {required this.width, this.color = Colors.grey, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 1,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          (width / 6).floor(),
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Container(
              color: Colors.grey,
              width: 2,
              height: 1,
              child: const Center(),
            ),
          ),
        ),
      ),
    );
  }
}
