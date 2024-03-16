import 'package:flutter/material.dart';

import 'booking_now.dart';
import 'reserve_available.dart';

class ReserveTennisCourt extends StatelessWidget {
  const ReserveTennisCourt({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Reserve your",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w300,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "Tennis court",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsetsDirectional.only(
                top: 24, start: 24, bottom: 24),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(25),
              ),
            ),
            child: const Column(
              children: [
                ReserveAvailable(),
                SizedBox(height: 51),
                BookingNow(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
