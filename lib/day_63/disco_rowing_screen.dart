import 'package:flutter/material.dart';

import 'package:ui_design_day_61_70/day_63/components/disco_rowing_background.dart';
import 'package:ui_design_day_61_70/day_63/components/disco_rowing_top_bar.dart';

import 'components/card_info_widget.dart';
import 'components/disco_rowing_title.dart';

class DiscoRowingScreen extends StatelessWidget {
  const DiscoRowingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DiscoRowingBackground(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 37, horizontal: 24),
            child: Column(
              children: [
                DiscoRowingTopBar(),
                Spacer(),
                DiscoRowingTitle(),
                SizedBox(height: 20),
                CardInfoWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
