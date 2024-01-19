import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_61/home_screen.dart';

import 'dashed_line_widget.dart';

class NextPageWidget extends StatelessWidget {
  const NextPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          'Natural habitat',
          textAlign: TextAlign.right,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 10),
        Transform.translate(
          offset: const Offset(-40, 0),
          child: const Align(
            alignment: AlignmentDirectional.centerStart,
            child: DashedLineWidget(width: 130),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Exhibiting\nover ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: '350 ',
                      style: TextStyle(
                        color: Color(0xFFF59C1D),
                        fontSize: 48,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: 'birds.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const HomeScreen()));
              },
              color: Colors.white,
              icon: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const Icon(
                  Icons.arrow_forward_rounded,
                  size: 40,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
