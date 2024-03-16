import 'package:flutter/material.dart';

import '../model/events.dart';
import 'add_favorite.dart';

class EventsTopBar extends StatelessWidget {
  const EventsTopBar({required this.events, super.key});

  final Events events;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF302E2D),
              ),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
          AddFavorite(events),
        ],
      ),
    );
  }
}
