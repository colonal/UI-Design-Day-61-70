import 'package:flutter/material.dart';

import '../model/events.dart';
import 'events_members.dart';

class EventsLocation extends StatelessWidget {
  const EventsLocation({required this.events, super.key});

  final Events events;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFF282828),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Members",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              EventsMembers(events: events),
            ],
          ),
          const SizedBox(width: 27),
          Expanded(
            child: AspectRatio(
              aspectRatio: 158 / 87,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white38),
                  image: const DecorationImage(
                    image: AssetImage("assets/day69/show_location.png"),
                    fit: BoxFit.cover,
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
