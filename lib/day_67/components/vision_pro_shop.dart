import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VisionProShop extends StatelessWidget {
  const VisionProShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "\$8200",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(48)),
                    color: Color(0xFFE3E4E8)),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Row(
                    children: [
                      const Draggable(
                        affinity: Axis.horizontal,
                        axis: Axis.horizontal,
                        feedback: _buildBox(),
                        childWhenDragging:
                            Opacity(opacity: 0.5, child: _buildBox()),
                        child: _buildBox(),
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        "Shop",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF87878C),
                        ),
                      ),
                      const SizedBox(width: 8),
                      buildIcons(colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.1),
                        Colors.black.withOpacity(.1),
                      ]),
                      buildIcons(colors: [
                        Colors.black.withOpacity(.6),
                        Colors.black.withOpacity(.1),
                        Colors.black.withOpacity(.1),
                      ]),
                      buildIcons(colors: [
                        Colors.black.withOpacity(.8),
                        Colors.black.withOpacity(.1),
                        Colors.black.withOpacity(.1),
                      ]),
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFD2D3D9),
                        ),
                        child: SvgPicture.asset("assets/day67/Box-Tick.svg"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
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

class _buildBox extends StatelessWidget {
  const _buildBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black,
      ),
      child: SvgPicture.asset("assets/day67/Box.svg"),
    );
  }
}
