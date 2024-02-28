import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Day65HeaderWidget extends StatelessWidget {
  const Day65HeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage("assets/day65/profile.png"),
          ),
          SvgPicture.asset("assets/day65/logo.svg"),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset("assets/day65/Menu.svg"),
          ),
        ],
      ),
    );
  }
}
