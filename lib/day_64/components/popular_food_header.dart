import 'package:flutter/material.dart';

class PopularFoodHeader extends StatelessWidget {
  const PopularFoodHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 21),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Popular Food",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w400,
              color: Color(0xFF1c2431),
            ),
          ),
          Text(
            "See All",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF1c2431).withOpacity(.5),
            ),
          ),
        ],
      ),
    );
  }
}
