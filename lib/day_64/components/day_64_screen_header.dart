import 'package:flutter/material.dart';

class Day64ScreenHeader extends StatelessWidget {
  const Day64ScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Color(0xFF171F2D),
              ),
            ),
            Text(
              "Jacob Jones",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w300,
                color: Color(0xFF1C2431),
              ),
            ),
          ],
        ),
        Container(
          width: 48,
          height: 48,
          margin: const EdgeInsetsDirectional.only(end: 21),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/day64/Profile.png"),
            ),
          ),
        )
      ],
    );
  }
}
