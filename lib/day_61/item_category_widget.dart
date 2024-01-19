import 'package:flutter/material.dart';

List<({String image, String title, String details})> items = [
  (
    image: "assets/day61/1.png",
    title: "Red Parrot",
    details: "6 years / H.25 cm",
  ),
  (
    image: "assets/day61/2.png",
    title: "Pink Parrot",
    details: "3 years / H.20 cm",
  ),
  (
    image: "assets/day61/3.png",
    title: "Duck",
    details: "2 years / H.20 cm",
  ),
];

class ItemCategoryWidget extends StatelessWidget {
  const ItemCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 246,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 20),
        itemBuilder: (context, index) {
          return _buildItem(items[index]);
        },
      ),
    );
  }

  Widget _buildItem(({String image, String title, String details}) item) {
    return Container(
      width: 140,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: const Color(0xFF191919),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              item.image,
              height: 140,
              width: 140,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  item.details,
                  style: const TextStyle(
                    color: Color(0xFF7F7F7F),
                    fontSize: 13,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w300,
                  ),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {},
                  child: const Text(
                    '+ Know More',
                    style: TextStyle(
                      color: Color(0xFFF59C1D),
                      fontSize: 13,
                      fontFamily: 'Outfit',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
