import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_design_day_61_70/day_65/components/button_widget.dart';
import 'package:ui_design_day_61_70/day_65/components/save_item_widget.dart';
import 'package:ui_design_day_61_70/day_65/components/custom_clipper_path.dart';

import '../model/house.dart';

class ImageHouse extends StatelessWidget {
  const ImageHouse({
    super.key,
    required this.house,
  });

  final HouseModel house;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        image: DecorationImage(
          image: AssetImage(house.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ButtonWidget(
                  image: "assets/day65/arrow-left.svg",
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                SaveItemWidget(house)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Row(
                      children: [
                        _buildIconAndInfo("assets/day65/Bed.svg", house.rooms),
                        _buildSpacer(),
                        _buildIconAndInfo("assets/day65/Bath.svg", house.baths),
                        _buildSpacer(),
                        _buildIconAndInfo(
                            "assets/day65/LivingRoom.svg", house.rooms),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: SvgPicture.asset("assets/day65/3D.svg"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildIconAndInfo(String image, String title) {
    return ClipOval(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.all(16),
          color: Colors.black.withOpacity(.15),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF000000),
                ),
                child: SizedBox(
                  width: 16,
                  height: 16,
                  child: SvgPicture.asset(
                    image,
                    fit: BoxFit.cover,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                ),
              ),
              Transform.translate(
                offset: const Offset(0, 13),
                child: Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSpacer() {
    return Transform.scale(
      scaleY: 1,
      scaleX: 1.3,
      child: Transform.translate(
        offset: const Offset(-0, 0),
        child: ClipPath(
          clipper: CustomClipperPath(),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            blendMode: BlendMode.srcIn,
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.black.withOpacity(.1),
            ),
          ),
        ),
      ),
    );
  }
}
