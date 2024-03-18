import 'package:flutter/material.dart';

import 'components/day_70_background.dart';
import 'components/day_70_meeting_time.dart';
import 'components/day_70_buttons.dart';
import 'components/day_70_logo.dart';
import 'components/day_70_top_bar.dart';

class Day70Screen extends StatelessWidget {
  const Day70Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF080A1D),
      body: Day70BackgroundScreen(
        child: Column(
          children: [
            SizedBox(height: 50),
            Day70TopBar(),
            SizedBox(height: 10),
            Expanded(child: Day70Logo()),
            SizedBox(height: 10),
            Day70MeetingTime(),
            SizedBox(height: 44),
            Day70Buttons(),
            SizedBox(height: 44),
          ],
        ),
      ),
    );
  }
}
