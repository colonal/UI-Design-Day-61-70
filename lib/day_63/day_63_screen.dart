import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_63/components/categories_widget.dart';
import 'package:ui_design_day_61_70/day_63/components/start_training_widget.dart';

import 'components/background_widget.dart';
import 'components/select_category_widget.dart';
import 'components/top_bar_day_63.dart';

class Day63Screen extends StatelessWidget {
  const Day63Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF232131),
      body: BackgroundWidget(
        child: SafeArea(
          child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(child: TopBarDay63()),
                    SliverToBoxAdapter(child: SizedBox(height: 32)),
                    SliverToBoxAdapter(child: StartTrainingWidget()),
                    SliverToBoxAdapter(child: SizedBox(height: 28)),
                    SliverToBoxAdapter(child: SelectCategoryWidget()),
                    SliverToBoxAdapter(child: SizedBox(height: 48)),
                    CategoriesWidget(),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
