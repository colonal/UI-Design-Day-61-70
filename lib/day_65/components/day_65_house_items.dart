import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_65/components/day_65_house_item.dart';
import 'package:ui_design_day_61_70/day_65/model/house.dart';
import 'package:ui_design_day_61_70/day_65/model/user.dart';

class Day65HouseItems extends StatelessWidget {
  const Day65HouseItems({super.key});

  static final List<HouseModel> items = [
    HouseModel(
      image: "assets/day65/1.png",
      title: "Minimalist house",
      location: "Los Angeles, California",
      prise: "13000",
      delay: "Month",
      rooms: "2",
      baths: "2",
      livingRoom: "1",
      save: false,
      user: UserModel(
        image:
            "https://images.unsplash.com/photo-1560250097-0b93528c311a?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        name: "Jacob Watson",
        type: "Owner",
      ),
    ),
    HouseModel(
      image: "assets/day65/2.png",
      title: "Dream Villa Nice House",
      location: "San Diego, California",
      prise: "16500",
      delay: "Month",
      rooms: "2",
      baths: "2",
      livingRoom: "1",
      save: false,
      user: UserModel(
        image:
            "https://images.unsplash.com/photo-1560250097-0b93528c311a?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        name: "Jacob Watson",
        type: "Owner",
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 600,
        mainAxisExtent: 400,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) => Day65HouseItem(items[index]),
    );
  }
}
