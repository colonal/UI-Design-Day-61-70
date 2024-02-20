import 'package:flutter/material.dart';

import 'components/custom_bottom_navigation_bar.dart';
import 'components/categories_widget.dart';
import 'components/custom_search_widget.dart';
import 'components/day_64_screen_header.dart';
import 'components/popular_food_header.dart';
import 'components/popular_food_items.dart';

class Day64Screen extends StatelessWidget {
  const Day64Screen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FA),
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: const Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(top: 56, start: 24, end: 3),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        Day64ScreenHeader(),
                        SizedBox(height: 24),
                        CustomSearchWidget(),
                        SizedBox(height: 24),
                        CategoriesWidget(),
                        SizedBox(height: 40),
                        PopularFoodHeader(),
                        SizedBox(height: 24),
                      ],
                    ),
                  ),
                  PopularFoodItems(),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 80),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 20,
              child: CustomBottomNavigationBar(),
            )
          ],
        ),
      ),
    );
  }
}
