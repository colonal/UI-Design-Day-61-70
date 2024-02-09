import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardDetailsWidget extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  const CardDetailsWidget({
    required this.image,
    required this.title,
    required this.subTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(.2),
            Colors.black.withOpacity(.05),
          ],
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(.3),
                  Colors.white.withOpacity(.1),
                ],
              ),
            ),
            child: SvgPicture.asset(
              image,
              width: 20,
              height: 20,
            ),
          ),
          const SizedBox(height: 6),
          Text.rich(
            TextSpan(
              text: title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
              children: [
                TextSpan(
                  text: " $subTitle",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withOpacity(.5)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
