import 'package:flutter/material.dart';

import '../components/day_66_background.dart';
import 'components/decorations_section.dart';
import 'components/title_section.dart';
import 'components/top_bar_widget.dart';

class Day66Screen extends StatelessWidget {
  const Day66Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Day66Background(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 28),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 56)),
              SliverToBoxAdapter(child: TopBarWidget()),
              SliverToBoxAdapter(child: SizedBox(height: 25)),
              SliverToBoxAdapter(child: TitleSection()),
              SliverToBoxAdapter(child: SizedBox(height: 21)),
              DecorationsSection(),
              SliverToBoxAdapter(child: SizedBox(height: 56)),
            ],
          ),
        ),
      ),
    );
  }
}
