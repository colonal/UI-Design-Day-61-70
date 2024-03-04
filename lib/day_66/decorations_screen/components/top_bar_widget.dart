import 'package:flutter/material.dart';

import '../../components/add_favorite_button.dart';
import '../../components/custom_icon.dart';
import '../../model/decorations.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({
    super.key,
    required this.decoration,
  });

  final Decorations decoration;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          customBorder: const CircleBorder(),
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const CustomIcon("assets/day66/arrow-left.svg"),
        ),
        AddFavoriteButton(
          decoration,
          backgroundColor: Colors.white.withOpacity(0.1),
        ),
      ],
    );
  }
}
