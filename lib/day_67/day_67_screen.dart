import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_67/components/day_67_title_widget.dart';

import 'components/day_67_top_bar.dart';
import 'components/day_67_watch_video.dart';

class Day67Screen extends StatelessWidget {
  const Day67Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF5F5F7),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50),
            Day67TopBar(),
            SizedBox(height: 40),
            Day67TitleWidget(),
            SizedBox(height: 39),
            Expanded(child: Day67WatchVideo()),
          ],
        ),
      ),
    );
  }
}
