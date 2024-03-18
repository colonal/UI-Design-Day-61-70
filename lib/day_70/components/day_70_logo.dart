import 'package:flutter/material.dart';

class Day70Logo extends StatelessWidget {
  const Day70Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        "assets/day70/logo.png",
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
