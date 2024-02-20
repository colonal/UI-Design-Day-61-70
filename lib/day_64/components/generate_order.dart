import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenerateOrder extends StatelessWidget {
  const GenerateOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(48),
      ),
      child: Row(children: [
        const Expanded(
          child: Center(
            child: Text(
              r"$20.99",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Color(0xFF131313),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(64),
                color: const Color(0xFFF07D29),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFEA15D),
                    ),
                    child: SvgPicture.asset("assets/day64/Order1.svg"),
                  ),
                  const Expanded(
                      child: Center(
                    child: Text(
                      "Generate order",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
