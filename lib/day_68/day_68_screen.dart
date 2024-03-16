import 'package:flutter/material.dart';

import 'components/day_68_bookings.dart';
import 'components/day_68_title_widget.dart';
import 'components/day_68_background_image.dart';
import 'components/day_68_top_bar.dart';
import 'components/reserve_tennis_court.dart';

class Day68Screen extends StatelessWidget {
  const Day68Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Day68BackgroundImage(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Day68TopBar(),
                SizedBox(height: 16),
                Day68TitleWidget(),
              ],
            ),
            Column(
              children: [
                Day68Bookings(),
                SizedBox(height: 31),
                ReserveTennisCourt(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
