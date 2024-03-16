import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Day69TopBar extends StatelessWidget {
  const Day69TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1509993630589-dbfcf726c21d?q=80&w=1888&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          SvgPicture.asset("assets/day69/logo.svg"),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(.25),
            ),
            child: const Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Color(0xFFE2823D),
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Color(0xFF000000),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Color(0xFF000000),
                    ),
                    SizedBox(width: 5),
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Color(0xFFE2823D),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
