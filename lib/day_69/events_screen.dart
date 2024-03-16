import 'package:flutter/material.dart';

import 'components/events_background_screen.dart';
import 'components/events_buy_now.dart';
import 'components/events_image.dart';
import 'components/events_info.dart';
import 'components/events_location.dart';
import 'components/events_top_bar.dart';
import 'model/events.dart';

class EventsScreen extends StatelessWidget {
  final Events events;
  const EventsScreen(this.events, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: EventsBackgroundScreen(
        child: Column(
          children: [
            const SizedBox(height: 40),
            EventsTopBar(events: events),
            Expanded(child: EventsImage(events: events)),
            EventsInfo(events: events),
            const SizedBox(height: 32),
            EventsLocation(events: events),
            const SizedBox(height: 32),
            EventsBuyNow(events: events),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
