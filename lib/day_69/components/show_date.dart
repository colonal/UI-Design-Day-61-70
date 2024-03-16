import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_69/model/events.dart';

class ShowDate extends StatelessWidget {
  final Events events;
  const ShowDate(this.events, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            border: Border.symmetric(
                vertical:
                    BorderSide(color: Colors.white.withOpacity(0.2), width: 2)),
            borderRadius: BorderRadius.circular(16),
            color: Colors.black.withOpacity(.2),
          ),
          child: Text(
            events.date.split(" ").join("\n"),
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
