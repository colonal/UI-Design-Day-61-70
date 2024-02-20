import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_64/model/pizza_model.dart';

class PizzaDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const PizzaDetailsAppBar({
    super.key,
    required this.item,
  });

  final PizzaModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: AppBar(
        backgroundColor: Colors.transparent,
        leading: Center(
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 24,
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          item.title,
          style: const TextStyle(
              fontSize: 28, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        actions: [
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(15),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.favorite,
                color: Colors.grey,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
