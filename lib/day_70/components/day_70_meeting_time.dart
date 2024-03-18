import 'package:flutter/material.dart';

class Day70MeetingTime extends StatelessWidget {
  const Day70MeetingTime({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 38),
      child: Text.rich(
        TextSpan(
          text: "Michael's meeting with shareholders It will be ",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white54,
          ),
          children: [
            TextSpan(
              text: "tomorrow at 3:00 PM",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
