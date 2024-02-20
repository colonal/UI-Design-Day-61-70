import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_64/components/custom_paint.dart';

import '../model/extra_ingredients_item_model.dart';

class ExtraIngredientsItem extends StatefulWidget {
  final ExtraIngredientsItemModel item;
  const ExtraIngredientsItem({required this.item, super.key});

  @override
  State<ExtraIngredientsItem> createState() => _ExtraIngredientsItemState();
}

class _ExtraIngredientsItemState extends State<ExtraIngredientsItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(
        children: [
          ClipPath(
            clipper: RPSCustomPainter1(),
            child: Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 150,
                width: 115,
                child: Card(
                  color: Colors.white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 16),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color(0xffF6F7FA),
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child:
                                Center(child: Image.asset(widget.item.image)),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Flexible(
                          child: Text(
                            widget.item.title,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF131313),
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.item.amount,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF131313),
                          ),
                        ),
                        const SizedBox(height: 22),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Transform.translate(
              offset: const Offset(0, 0),
              child: Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ColorScheme.fromSeed(
                    seedColor: Colors.transparent,
                    surfaceVariant: Colors.white,
                    primary: const Color(0xFFF07D29),
                  ),
                ),
                child: IconButton.filled(
                  onPressed: () {
                    setState(() {
                      widget.item.select = !widget.item.select;
                    });
                  },
                  isSelected: widget.item.select,
                  selectedIcon: const Icon(
                    Icons.done,
                    color: Colors.white,
                  ),
                  icon: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
