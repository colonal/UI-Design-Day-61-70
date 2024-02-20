import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_64/model/extra_ingredients_item_model.dart';

import 'extra_ingredients_item.dart';

class ExtraIngredientsListView extends StatelessWidget {
  const ExtraIngredientsListView({super.key});
  static final items = [
    ExtraIngredientsItemModel(
        title: "Tomato",
        image: "assets/day64/tomato.png",
        amount: r"$3.00",
        select: true),
    ExtraIngredientsItemModel(
        title: "Cheese",
        image: "assets/day64/cheese.png",
        amount: r"$2.00",
        select: false),
    ExtraIngredientsItemModel(
        title: "Pineapple",
        image: "assets/day64/pineapple.png",
        amount: r"$5.00",
        select: false),
    ExtraIngredientsItemModel(
        title: "Garlic",
        image: "assets/day64/garlic.png",
        amount: r"$4.00",
        select: false),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsetsDirectional.only(start: 24),
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(width: 12),
        itemBuilder: (context, index) => IntrinsicWidth(
          child: ExtraIngredientsItem(item: items[index]),
        ),
      ),
    );
  }
}
