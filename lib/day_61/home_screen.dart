import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_61/home_background_screen.dart';
import 'package:ui_design_day_61_70/day_61/item_category_widget.dart';
import 'package:ui_design_day_61_70/day_61/like_category_widget.dart';
import 'package:ui_design_day_61_70/day_61/logo_widget.dart';
import 'package:ui_design_day_61_70/day_61/video_birds_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: HomeBackgroundScreen(
        child: SingleChildScrollView(
          padding:
              EdgeInsetsDirectional.only(top: 69.0, bottom: 69.0, start: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(end: 40),
                child: LogoWidget(),
              ),
              SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  text: 'Welcome ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Outfit',
                    fontWeight: FontWeight.w100,
                  ),
                  children: [
                    TextSpan(
                      text: 'Emilia',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w400,
                        height: 0.04,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'What would you like to learn about?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontFamily: 'Outfit',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              LikeCategoryWidget(),
              SizedBox(height: 20),
              ItemCategoryWidget(),
              SizedBox(height: 20),
              VideoBirdsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
