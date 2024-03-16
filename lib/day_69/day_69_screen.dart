import 'package:flutter/material.dart';

import 'components/day_69_background_screen.dart';
import 'components/day_69_title_widget.dart';
import 'components/day_69_top_bar.dart';
import 'components/favorite_event.dart';

class Day69Screen extends StatelessWidget {
  const Day69Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Day69BackgroundScreen(
        child: Day69BackgroundScreen(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    Day69TopBar(),
                    SizedBox(height: 32),
                    Day69TitleWidget(),
                    SizedBox(height: 40),
                  ],
                ),
              ),
              FavoriteEvent(),
            ],
          ),
        ),
      ),
    );
  }
}
