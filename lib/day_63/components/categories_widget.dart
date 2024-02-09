import 'package:flutter/material.dart';

import 'category_item_widget.dart';

final List<({String title, double kcal, int task, String time, String image})>
    categories = [
  (
    title: "Cardio",
    task: 12,
    kcal: 2500,
    time: "45 min",
    image: "assets/day63/1.png"
  ),
  (
    title: "Arm muscle",
    task: 12,
    kcal: 2500,
    time: "45 min",
    image: "assets/day63/2.png"
  ),
];

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: categories.length,
      separatorBuilder: (_, __) => const SizedBox(height: 24),
      itemBuilder: (context, index) =>
          CategoryItemWidget(category: categories[index]),
    );
  }
}
