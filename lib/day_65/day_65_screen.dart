import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_65/components/day_65_categories_widget.dart';

import 'components/day_65_header_widget.dart';
import 'components/day_65_house_items.dart';

class Day65Screen extends StatelessWidget {
  const Day65Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF1F3F9),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 30),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Day65HeaderWidget(),
                    SizedBox(height: 32),
                    Day65CategoriesWidget(),
                    SizedBox(height: 28),
                  ],
                ),
              ),
              Day65HouseItems(),
              SliverToBoxAdapter(child: SizedBox(height: 28))
            ],
          ),
        ),
      ),
    );
  }
}
