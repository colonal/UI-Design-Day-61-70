import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopBarDay63 extends StatelessWidget {
  const TopBarDay63({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xFF252533).withOpacity(.9),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SvgPicture.asset(
                    "assets/day63/menu.svg",
                    width: 24,
                    height: 24,
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/day63/profile.jpg",
                    alignment: Alignment.topCenter,
                    fit: BoxFit.cover,
                    width: 56,
                    height: 56,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(2, -2),
                  child: const CircleAvatar(
                    backgroundColor: Color(0xFF046EEA),
                    radius: 5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
