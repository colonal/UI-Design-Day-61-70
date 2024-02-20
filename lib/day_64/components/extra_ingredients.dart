import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_64/components/extra_ingredients_list_view.dart';

class ExtraIngredients extends StatelessWidget {
  const ExtraIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Add extra ingredients",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff131313),
          ),
        ),
        SizedBox(height: 12),
        ExtraIngredientsListView(),
      ],
    );
  }
}
