import 'package:flutter/material.dart';

import '../model/events.dart';
import 'show_date.dart';

class EventsImage extends StatelessWidget {
  const EventsImage({
    super.key,
    required this.events,
  });

  final Events events;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(
              events.image,
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              fit: BoxFit.fitWidth,
            ),
          ),
          PositionedDirectional(
            bottom: 0,
            end: 10,
            child: ShowDate(events),
          ),
        ],
      );
    });
  }
}
