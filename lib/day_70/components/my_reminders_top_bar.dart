import 'package:flutter/material.dart';

import 'custom_button.dart';

class MyRemindersTopBar extends StatelessWidget {
  const MyRemindersTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            "assets/day70/arrow-left.svg",
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          const Text(
            "My Reminders",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          const CustomButton("assets/day70/menu.svg"),
        ],
      ),
    );
  }
}
