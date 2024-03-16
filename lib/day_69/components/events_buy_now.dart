import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../model/events.dart';

class EventsBuyNow extends StatelessWidget {
  const EventsBuyNow({required this.events, super.key});

  final Events events;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Ticket price",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0x80FFFFFF)),
                ),
                const SizedBox(height: 4),
                Text(
                  events.price,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(width: 36),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: const Color(0xFF212121),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  Draggable(
                    affinity: Axis.horizontal,
                    axis: Axis.horizontal,
                    feedback: _buildBoxActive(),
                    childWhenDragging:
                        Opacity(opacity: 0.5, child: _buildBoxActive()),
                    child: _buildBoxActive(),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Buy now",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 8),
                  buildIcons(colors: [
                    Colors.white.withOpacity(.4),
                    Colors.white.withOpacity(.1),
                    Colors.white.withOpacity(.1),
                  ]),
                  buildIcons(colors: [
                    Colors.white.withOpacity(.6),
                    Colors.white.withOpacity(.1),
                    Colors.white.withOpacity(.1),
                  ]),
                  buildIcons(colors: [
                    Colors.white.withOpacity(.8),
                    Colors.white.withOpacity(.1),
                    Colors.white.withOpacity(.1),
                  ]),
                  const SizedBox(width: 8),
                  _buildBox(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buildBoxActive() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFE2823D),
      ),
      child: SvgPicture.asset("assets/day69/ticket.svg"),
    );
  }

  Container _buildBox() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0x33FFFFFF),
      ),
      child: SvgPicture.asset("assets/day69/ticket.svg"),
    );
  }

  ShaderMask buildIcons({required List<Color> colors}) {
    return ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (Rect bounds) => RadialGradient(
              colors: colors,
            ).createShader(bounds),
        child: const Icon(Icons.arrow_forward_ios_rounded));
  }
}
