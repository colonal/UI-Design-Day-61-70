import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_62/components/select_size_widget.dart';

import 'components/day_62_background_widget.dart';
import 'components/price_watches_widget.dart';
import 'components/watches_image_widget.dart';
import 'components/watches_top_widget.dart';

class WatchesScreen extends StatelessWidget {
  const WatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF090B18),
      body: Day62BackgroundWidget(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                WatchesTopWidget(),
                WatchesImageWidget(),
                SelectSizeWidget(),
                SizedBox(height: 30),
                PriceWatchesWidget(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
