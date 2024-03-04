import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/custom_icon.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Stack(
        children: [
          SvgPicture.asset(
            "assets/day66/Union.svg",
            fit: BoxFit.fill,
            width: constraint.maxWidth,
          ),
          Positioned(
            top: 0,
            bottom: 0,
            width: constraint.maxWidth,
            child: Center(
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: constraint.maxWidth * .05),
                child: SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        customBorder: const CircleBorder(),
                        onTap: () {},
                        child: _buildIcon("assets/day66/Vector.svg"),
                      ),
                      InkWell(
                        customBorder: const CircleBorder(),
                        onTap: () {},
                        child: _buildIcon("assets/day66/add.svg"),
                      ),
                      InkWell(
                        customBorder: const CircleBorder(),
                        onTap: () {},
                        child: _buildIcon("assets/day66/maximize-circle.svg"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }

  Widget _buildIcon(image) {
    return CustomIcon(
      image,
      width: 40,
      height: 40,
    );
  }
}
