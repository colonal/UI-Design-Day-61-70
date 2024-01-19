import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_design_day_61_70/day_61/dashed_line_widget.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/day61/logo.png",
              width: 153,
              height: 40,
            ),
            SvgPicture.asset(
              "assets/day61/menu.svg",
              width: 48,
              height: 48,
            )
          ],
        ),
        const SizedBox(height: 14),
        Transform.translate(
          offset: const Offset(40, 0),
          child: const Align(
            alignment: AlignmentDirectional.centerEnd,
            child: DashedLineWidget(width: 90),
          ),
        )
      ],
    );
  }
}
