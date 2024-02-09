import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_design_day_61_70/day_63/components/slider_widget.dart';

import 'card_details_widget.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.white.withOpacity(.18)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(.35),
                Colors.black.withOpacity(.0),
              ],
            ),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.25),
                          Colors.black.withOpacity(0),
                        ],
                      ),
                    ),
                    child: SvgPicture.asset(
                      "assets/day63/time1.svg",
                      width: 20,
                      height: 20,
                    ),
                  ),
                  const Text(
                    "01:30",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              const SliderWidget(),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CardDetailsWidget(
                    image: "assets/day63/Set.svg",
                    title: "1/8",
                    subTitle: "Set",
                  ),
                  CardDetailsWidget(
                    image: "assets/day63/Repets.svg",
                    title: "5",
                    subTitle: "Rept",
                  ),
                  CardDetailsWidget(
                    image: "assets/day63/Calories.svg",
                    title: "250",
                    subTitle: "Cal",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
