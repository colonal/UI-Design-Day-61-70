import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_64/components/extra_ingredients.dart';
import 'package:ui_design_day_61_70/day_64/components/generate_order.dart';
import 'package:ui_design_day_61_70/day_64/components/sizes_and_amount.dart';
import 'package:ui_design_day_61_70/day_64/model/pizza_model.dart';

import 'components/pizza_details_app_bar.dart';
import 'components/pizza_image.dart';

class PizzaDetailsScreen extends StatelessWidget {
  final PizzaModel item;

  const PizzaDetailsScreen({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FA),
      appBar: PizzaDetailsAppBar(item: item),
      body: Column(
        children: [
          Expanded(child: ImageAndSizesAndAmount(item: item)),
          const SizedBox(height: 32),
          const ExtraIngredients(),
          const SizedBox(height: 15),
          const GenerateOrder(),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

class ImageAndSizesAndAmount extends StatefulWidget {
  const ImageAndSizesAndAmount({
    super.key,
    required this.item,
  });

  final PizzaModel item;

  @override
  State<ImageAndSizesAndAmount> createState() => _ImageAndSizesAndAmountState();
}

class _ImageAndSizesAndAmountState extends State<ImageAndSizesAndAmount> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PizzaImage(item: widget.item),
        ),
        SizesAndAmount(widget.item.sizePizza, (size) {
          setState(() {
            widget.item.sizePizza = size;
          });
        }),
      ],
    );
  }
}
