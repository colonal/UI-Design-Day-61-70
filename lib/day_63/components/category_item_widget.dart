import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../disco_rowing_screen.dart';

class CategoryItemWidget extends StatelessWidget {
  final ({
    String title,
    double kcal,
    int task,
    String time,
    String image
  }) category;
  const CategoryItemWidget({required this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 209,
      padding: const EdgeInsetsDirectional.only(top: 24, start: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: const Color(0xFF2E2D3A),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Exercise",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
                Text(
                  category.title,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 24),
                _buildShape(
                  "assets/day63/Task.svg",
                  "${category.task} Task",
                ),
                const SizedBox(height: 12),
                _buildShape(
                  "assets/day63/Fire.svg",
                  "${category.kcal} Kcal",
                ),
                const SizedBox(height: 12),
                _buildShape("assets/day63/Time.svg", category.time),
                const SizedBox(height: 24),
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DiscoRowingScreen()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  color: const Color(0xFF046EEA),
                  child: const Text(
                    "Start workout",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              child: Image.asset(
                category.image,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShape(String image, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white.withOpacity(.1),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          children: [
            SvgPicture.asset(
              image,
              width: 16,
              height: 16,
            ),
            const SizedBox(width: 4),
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
