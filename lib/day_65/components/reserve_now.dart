import 'package:flutter/material.dart';

import '../model/house.dart';

class ReserveNow extends StatelessWidget {
  const ReserveNow({
    super.key,
    required this.house,
  });

  final HouseModel house;

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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "\$${house.prise}",
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 1),
              Text(
                "/${house.delay}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            ],
          ),
          const SizedBox(width: 40),
          Expanded(
            child: SizedBox(
              height: 56,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF200F35),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Reserve now",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
