import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_64/components/enum.dart';
import 'package:ui_design_day_61_70/day_64/components/popular_food_item.dart';
import 'package:ui_design_day_61_70/day_64/model/pizza_model.dart';
import 'package:ui_design_day_61_70/day_64/pizza_details_screen.dart';

class PopularFoodItems extends StatelessWidget {
  const PopularFoodItems({super.key});
  static final items = [
    PizzaModel(
        title: "Tasty pizza",
        time: "15 min",
        prise: r"$15.99",
        image: "assets/day64/1.png",
        sizePizza: SizePizza.l),
    PizzaModel(
        title: "Vegetarian pizza",
        time: "12 min",
        prise: r"$14.99",
        image: "assets/day64/2.png",
        sizePizza: SizePizza.l),
    PizzaModel(
      title: "American pizza",
      time: "15 min",
      prise: r"$13.99",
      image: "assets/day64/3.png",
      sizePizza: SizePizza.l,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsetsDirectional.only(end: 21),
        child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      PizzaDetailsScreen(item: items[index])));
            },
            child: PopularFoodItem(item: items[index])),
      ),
    );
  }
}
