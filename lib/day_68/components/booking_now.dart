import 'package:flutter/material.dart';

import '../central_park_screen.dart';

class BookingNow extends StatelessWidget {
  const BookingNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildButton("Calendar"),
        const SizedBox(width: 16),
        _buildButton("Booking Now",
            backgroundColor: const Color(0xFF004ABE),
            borderColor: const Color(0xFF004ABE),
            textColor: Colors.white, onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const CentralParkScreen()));
        }),
      ],
    );
  }

  Widget _buildButton(String text,
      {Color? backgroundColor,
      Color? textColor,
      Color? borderColor,
      void Function()? onTap}) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: onTap ?? () {},
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
              color: borderColor ?? const Color(0xFFc3c3c3), width: 2),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textColor ?? Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
