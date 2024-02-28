import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_design_day_61_70/day_65/model/house.dart';

class UserInfo extends StatelessWidget {
  final HouseModel house;
  const UserInfo(this.house, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Row(
        children: [
          ClipOval(
            child: SizedBox(
              width: 48,
              height: 48,
              child: Image.network(
                house.user.image,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  house.user.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  house.user.type,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              _buildIcon("assets/day65/Message.svg"),
              const SizedBox(width: 12),
              _buildIcon("assets/day65/call.svg"),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildIcon(String icon) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFD5CBE2),
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
