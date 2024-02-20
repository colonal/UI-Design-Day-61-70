import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_64/model/pizza_model.dart';

class PizzaImage extends StatefulWidget {
  const PizzaImage({
    super.key,
    required this.item,
  });

  final PizzaModel item;

  @override
  State<PizzaImage> createState() => _PizzaImageState();
}

class _PizzaImageState extends State<PizzaImage> {
  bool turns = true;
  @override
  void initState() {
    Future.delayed(const Duration(microseconds: 100), () {
      setState(() {
        turns = !turns;
      });
    });
    super.initState();
  }

  @override
  void didUpdateWidget(covariant PizzaImage oldWidget) {
    Future.delayed(const Duration(microseconds: 100), () {
      setState(() {
        turns = !turns;
      });
    });
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedRotation(
        turns: turns ? 1 : 0,
        duration: const Duration(milliseconds: 300),
        child: AspectRatio(
          aspectRatio: widget.item.sizePizza.size,
          child: Center(
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.5),
                    shape: BoxShape.circle,
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(1),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(widget.item.image),
                  ),
                ),
                Image.asset("assets/day64/Mint.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
