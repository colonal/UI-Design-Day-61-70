import 'package:flutter/material.dart';

import '../model/events.dart';

class AddFavorite extends StatefulWidget {
  final Events events;
  const AddFavorite(this.events, {super.key});

  @override
  State<AddFavorite> createState() => _AddFavoriteState();
}

class _AddFavoriteState extends State<AddFavorite> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.events.isFavorite = !widget.events.isFavorite;
        });
      },
      customBorder: const CircleBorder(),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF302E2D),
        ),
        child: widget.events.isFavorite
            ? const Icon(Icons.favorite, color: Color(0xFFE2823D))
            : const Icon(Icons.favorite_border, color: Colors.white),
      ),
    );
  }
}
