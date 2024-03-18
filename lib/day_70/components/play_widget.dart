import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PlayWidget extends StatelessWidget {
  const PlayWidget({
    super.key,
    required this.item,
  });

  final ({
    String begin,
    Color color,
    String end,
    List<String> images,
    String type
  }) item;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(48),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(48),
            gradient: const LinearGradient(
              begin: AlignmentDirectional.centerStart,
              end: AlignmentDirectional.centerEnd,
              colors: [
                Color(0x400A0C1F),
                Color(0x402B3385),
              ],
            ),
          ),
          child: Row(
            children: [
              const SizedBox(width: 15),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Row(
                    children: [
                      ...List.generate(
                        10,
                        (index) => Row(
                          children: [
                            _buildWave(),
                            const SizedBox(width: 5),
                            _buildWave(height: 10),
                            const SizedBox(width: 5),
                          ],
                        ),
                      ),
                      _buildWave(),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: SvgPicture.asset(
                  "assets/day70/play.svg",
                  colorFilter: ColorFilter.mode(
                    item.color,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWave({double? height}) {
    return Container(
      width: 2,
      height: height ?? 16,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Colors.white, Colors.white24],
        ),
      ),
    );
  }
}
