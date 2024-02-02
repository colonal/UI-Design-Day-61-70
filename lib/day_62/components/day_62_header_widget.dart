import 'package:flutter/material.dart';

class Day62HeaderWidget extends StatelessWidget {
  const Day62HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 31, right: 31, top: 45),
      child: SizedBox(
        height: 64,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Color(0x3F24334E),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/day62/menu.png",
                width: 24,
                height: 24,
              ),
            ),
            Image.asset(
              "assets/day62/LOGO.png",
              height: 66,
              width: 105,
              fit: BoxFit.fill,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Color(0x3F24334E),
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/day62/shopping_bag.png",
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
