import 'package:flutter/material.dart';

import '../model/decorations.dart';
import 'custom_icon.dart';

class AddFavoriteButton extends StatefulWidget {
  final Decorations decoration;
  final Color? backgroundColor;
  const AddFavoriteButton(this.decoration, {this.backgroundColor, super.key});

  @override
  State<AddFavoriteButton> createState() => _AddFavoriteButtonState();
}

class _AddFavoriteButtonState extends State<AddFavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          widget.decoration.favorite = !widget.decoration.favorite;
        });
      },
      child: CustomIcon(
        widget.decoration.favorite
            ? "assets/day66/star_full.svg"
            : "assets/day66/star.svg",
        color: widget.backgroundColor ?? Colors.black.withOpacity(0.15),
      ),
    );
  }
}
