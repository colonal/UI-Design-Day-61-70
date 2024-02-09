import 'package:flutter/material.dart';

class StartTrainingWidget extends StatelessWidget {
  const StartTrainingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Hi Angel",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Colors.white.withOpacity(.7),
          ),
        ),
        const Text(
          "Let’s start training",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
