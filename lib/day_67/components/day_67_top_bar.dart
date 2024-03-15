import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Day67TopBar extends StatelessWidget {
  const Day67TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              ClipOval(
                child: Image.network(
                  "https://images.unsplash.com/photo-1568602471122-7832951cc4c5?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  alignment: Alignment.topCenter,
                  width: 48,
                  height: 48,
                  fit: BoxFit.cover,
                ),
              ),
              const PositionedDirectional(
                bottom: 0,
                end: 0,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Color(0xFFF5F5F7),
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Color(0xFF1D1D1F),
                  ),
                ),
              ),
            ],
          ),
          SvgPicture.asset(
            "assets/day67/LOGO.svg",
            width: 32,
            height: 32,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black),
            ),
            child: SvgPicture.asset("assets/day67/Menu.svg"),
          )
        ],
      ),
    );
  }
}
