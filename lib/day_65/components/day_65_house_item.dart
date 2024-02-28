import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_65/components/save_item_widget.dart';
import 'package:ui_design_day_61_70/day_65/house_screen.dart';
import 'package:ui_design_day_61_70/day_65/model/house.dart';

import 'day_65_house_item_details.dart';

class Day65HouseItem extends StatelessWidget {
  final HouseModel house;
  const Day65HouseItem(this.house, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => HouseScreen(house)));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.white, width: 4),
          image: DecorationImage(
              image: AssetImage(house.image), fit: BoxFit.cover),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: SaveItemWidget(house),
              ),
              Day65HouseItemDetails(house),
            ],
          ),
        ),
      ),
    );
  }
}
