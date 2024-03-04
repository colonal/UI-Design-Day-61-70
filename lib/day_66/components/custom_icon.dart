import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIcon extends StatelessWidget {
  final double width;
  final double height;
  final String icon;
  final Color? color;
  const CustomIcon(this.icon,
      {this.height = 56, this.width = 56, this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color ?? Colors.white.withOpacity(.1),
      ),
      child: Center(child: SvgPicture.asset(icon)),
    );
  }
}
