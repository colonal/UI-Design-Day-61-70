import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../model/house.dart';

class ShowMap extends StatelessWidget {
  const ShowMap({
    super.key,
    required this.house,
  });

  final HouseModel house;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                house.title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/day65/location.svg",
                    colorFilter: const ColorFilter.mode(
                      Color(0xFF78797D),
                      BlendMode.srcIn,
                    ),
                  ),
                  Text(
                    house.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(.5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Color(0xFF200F35)),
              child: SvgPicture.asset("assets/day65/Map.svg"),
            ),
            const SizedBox(height: 4),
            const Text(
              "Map",
              style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ],
        )
      ],
    );
  }
}
