import 'package:flutter/material.dart';

import 'components/calendar.dart';
import 'components/meetings_screen.dart';
import 'components/my_reminders_top_bar.dart';

class MyRemindersScreen extends StatelessWidget {
  const MyRemindersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF080A1D),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 40),
                  MyRemindersTopBar(),
                  SizedBox(height: 40),
                  Calendar(),
                  SizedBox(height: 38),
                ],
              ),
            ),
            MeetingsScreen(),
            SliverToBoxAdapter(
              child: SizedBox(height: 38),
            ),
          ],
        ),
      ),
    );
  }
}
