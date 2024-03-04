import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select your",
          style: TextStyle(
            color: Colors.white.withOpacity(.5),
            fontSize: 36,
            fontWeight: FontWeight.w300,
          ),
        ),
        const SizedBox(height: 5),
        const Text(
          "favorite decoration",
          style: TextStyle(
            color: Colors.white,
            fontSize: 36,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
