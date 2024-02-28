import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_design_day_61_70/day_65/model/house.dart';

import 'components/image_house.dart';
import 'components/reserve_now.dart';
import 'components/show_map.dart';
import 'components/user_info.dart';

class HouseScreen extends StatelessWidget {
  final HouseModel house;
  const HouseScreen(this.house, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F3F9),
      body: SafeArea(
        child: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                      width: double.infinity,
                      child: AspectRatio(
                          aspectRatio: 2 / 1, child: ImageHouse(house: house))),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      children: [
                        ShowMap(house: house),
                        const SizedBox(height: 25),
                        UserInfo(house),
                        const SizedBox(height: 24),
                        ReserveNow(house: house),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          return Column(
            children: [
              Expanded(child: ImageHouse(house: house)),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    ShowMap(house: house),
                    const SizedBox(height: 25),
                    UserInfo(house),
                    const SizedBox(height: 24),
                    ReserveNow(house: house),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
