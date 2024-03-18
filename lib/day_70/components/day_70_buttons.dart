import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_design_day_61_70/day_70/components/custom_button.dart';

import '../my_reminders.dart';

class Day70Buttons extends StatelessWidget {
  const Day70Buttons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          SizedBox(
            width: constraints.maxWidth,
            child: ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Colors.transparent,
                    Colors.black,
                    Colors.transparent
                  ],
                ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
              },
              blendMode: BlendMode.dstIn,
              child: SvgPicture.asset(
                "assets/day70/line.svg",
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomButton("assets/day70/home.svg"),
                _buildCustomButton("assets/day70/microphone.svg"),
                const CustomButton("assets/day70/candle.svg"),
              ],
            ),
          )
        ],
      );
    });
  }

  Widget _buildCustomButton(String image) {
    return Builder(builder: (context) {
      return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const MyRemindersScreen()));
        },
        customBorder: const CircleBorder(),
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFE0AEEC),
                Color(0xFF445BD1),
              ],
            ),
          ),
          child: ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: Container(
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xFF080A1D).withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(image),
              ),
            ),
          ),
        ),
      );
    });
  }
}
