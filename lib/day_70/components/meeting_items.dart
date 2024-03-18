import 'package:flutter/material.dart';

import 'people_widget.dart';
import 'custom_dashed_line.dart';
import 'play_widget.dart';

class MeetingItems extends StatelessWidget {
  const MeetingItems({required this.item, super.key});

  final ({
    String begin,
    String end,
    List<String> images,
    Color color,
    String type
  }) item;

  @override
  Widget build(BuildContext context) {
    Color textColor = getFontColorForBackground(item.color);
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: item.color,
      ),
      child: LayoutBuilder(builder: (context, constraints) {
        return Row(
          children: [
            SizedBox(
              width: constraints.maxWidth * .65,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You have a meeting",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    item.type,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: textColor,
                    ),
                  ),
                  const SizedBox(height: 12),
                  PeopleWidget(
                    people: item.images,
                    borderColor: item.color,
                  ),
                  const SizedBox(height: 16),
                  PlayWidget(item: item),
                ],
              ),
            ),
            SizedBox(width: constraints.maxWidth * .05),
            SizedBox(
              width: constraints.maxWidth * .3,
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Column(
                  children: [
                    Text(
                      item.begin,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                    ),
                    Text(
                      "Begin",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                    ),
                    const SizedBox(height: 12),
                    _buildCircle(textColor),
                    SizedBox(
                      height: 40,
                      child: CustomDashedLine(textColor),
                    ),
                    _buildCircle(textColor),
                    const SizedBox(height: 12),
                    Text(
                      item.end,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                    ),
                    Text(
                      "Ends",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      }),
    );
  }

  Container _buildCircle(Color color) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: color),
      ),
      child: CircleAvatar(
        radius: 4,
        backgroundColor: color,
      ),
    );
  }

  Color getFontColorForBackground(Color background) {
    return (background.computeLuminance() > 0.179)
        ? Colors.black
        : Colors.white;
  }
}
