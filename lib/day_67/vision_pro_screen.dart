import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_67/components/vision_pro_shop.dart';
import 'package:ui_design_day_61_70/day_67/components/vision_pro_widget.dart';

import 'components/day_67_title_widget.dart';
import 'components/vision_pro_top_bar.dart';

class VisionProScreen extends StatelessWidget {
  const VisionProScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF5F5F7),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 56),
          VisionProTopBar(),
          SizedBox(height: 40),
          Day67TitleWidget(),
          SizedBox(height: 20),
          Expanded(
            child: VisionProWidget(),
          ),
          VisionProShop(),
          SizedBox(height: 40),
        ],
      )),
    );
  }
}
