import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

List<({String image, String time})> items = [
  (
    image: "assets/day61/4.png",
    time: "2:03",
  ),
  (
    image: "assets/day61/5.png",
    time: "2:03",
  ),
  (
    image: "assets/day61/6.png",
    time: "2:03",
  ),
];

class VideoBirdsWidget extends StatelessWidget {
  const VideoBirdsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Video Birds',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w400,
          ),
        ),
        const Text(
          'Experience how our birds live',
          style: TextStyle(
            color: Color(0xFF7F7F7F),
            fontSize: 13,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 120,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            separatorBuilder: (_, __) => const SizedBox(width: 20),
            itemBuilder: (context, index) {
              return _buildItem(items[index]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildItem(({String image, String time}) item) {
    return Container(
      width: 140,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        image: DecorationImage(image: AssetImage(item.image)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "assets/day61/Play.svg",
                  width: 24,
                  height: 24,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 8.0,
                      sigmaY: 8.0,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.black.withOpacity(0.3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text(
                        item.time,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Outfit',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
