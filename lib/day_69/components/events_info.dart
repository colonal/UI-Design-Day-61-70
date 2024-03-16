import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_design_day_61_70/day_69/model/events.dart';

class EventsInfo extends StatelessWidget {
  const EventsInfo({
    super.key,
    required this.events,
  });

  final Events events;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          Text(
            events.title,
            style: const TextStyle(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          IntrinsicHeight(
            child: Row(
              children: [
                Expanded(
                  child: _buildInfo(
                    image: "assets/day69/location.svg",
                    title: events.location,
                  ),
                ),
                VerticalDivider(
                  color: Colors.white.withOpacity(.5),
                  indent: 2,
                  endIndent: 2,
                  thickness: 1.1,
                  width: 30,
                ),
                Expanded(
                  child: _buildInfo(
                    image: "assets/day69/clock.svg",
                    title: events.time,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInfo({required String title, required String image}) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: Colors.white.withOpacity(.15)),
          child: SvgPicture.asset(image),
        ),
        const SizedBox(width: 14),
        Flexible(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
