import 'package:flutter/material.dart';

import '../../model/decorations.dart';
import 'decoration_item_section.dart';

class DecorationsSection extends StatelessWidget {
  const DecorationsSection({super.key});

  static final List<Decorations> decorations = [
    Decorations(
      title: "Futuristic Metallic",
      caver: "assets/day66/1.png",
      image: "assets/day66/1.1.png",
      price: "\$35.00",
      favorite: true,
    ),
    Decorations(
      title: "Vintage futuristic",
      caver: "assets/day66/2.png",
      image: "assets/day66/2.1.png",
      price: "\$35.00",
      favorite: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: decorations.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 600,
        mainAxisExtent: 400,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => Padding(
        padding: EdgeInsets.only(top: index == 0 ? 0 : 6),
        child: DecorationItemSection(decorations[index]),
      ),
    );
  }
}
