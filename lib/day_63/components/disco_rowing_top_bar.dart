import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DiscoRowingTopBar extends StatelessWidget {
  const DiscoRowingTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildIcon(context, "assets/day63/Back.svg"),
        _buildIcon(context, "assets/day63/Close.svg"),
      ],
    );
  }

  Widget _buildIcon(BuildContext context, String image) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.15),
          borderRadius: BorderRadius.circular(20),
        ),
        child: SvgPicture.asset(image),
      ),
    );
  }
}
