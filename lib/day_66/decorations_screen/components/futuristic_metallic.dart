import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_66/components/custom_icon.dart';

import '../../model/decorations.dart';

class FuturisticMetallic extends StatelessWidget {
  final Decorations decoration;

  const FuturisticMetallic(this.decoration, {super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Futuristic Metallic",
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 32),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIcon("assets/day66/color.svg"),
            SizedBox(width: 5),
            CustomIcon("assets/day66/group.svg"),
            SizedBox(width: 5),
            CustomIcon("assets/day66/group1.svg"),
            SizedBox(width: 5),
            CustomIcon("assets/day66/add.svg"),
          ],
        )
      ],
    );
  }
}
