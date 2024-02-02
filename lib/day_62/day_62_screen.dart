import 'package:flutter/material.dart';

import 'components/collection_widget.dart';
import 'components/day_62_background_widget.dart';
import 'components/day_62_header_widget.dart';
import 'components/watches_widget.dart';

class Day62Screen extends StatelessWidget {
  const Day62Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF090B18),
      body: Day62BackgroundWidget(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Day62HeaderWidget(),
                SizedBox(height: 30),
                WatchesWidget(),
                SizedBox(height: 30),
                CollectionWidget(),
                SizedBox(height: 150),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
