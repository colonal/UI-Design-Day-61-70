import 'package:flutter/material.dart';

class PriceWatchesWidget extends StatelessWidget {
  const PriceWatchesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 14,
                    fontFamily: 'Cinzel',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Text(
                  '12,950',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: 'Cinzel',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'USD',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 14,
                    fontFamily: 'Cinzel',
                    fontWeight: FontWeight.w400,
                    height: 0.07,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shop',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 14,
                    fontFamily: 'Cinzel',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Container(
                    height: 56,
                    decoration: ShapeDecoration(
                      color: const Color(0x33737373),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(56),
                      ),
                    ),
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Draggable<String>(
                          data: "pop",
                          affinity: Axis.horizontal,
                          axis: Axis.horizontal,
                          feedback: _buildIconWidget("assets/day62/Clock.png",
                              const Color(0xFF458BDF)),
                          childWhenDragging: const SizedBox(
                            width: 48,
                            height: 48,
                          ),
                          child: _buildIconWidget("assets/day62/Clock.png",
                              const Color(0xFF458BDF)),
                        ),
                        const ArrowIconWidget(),
                        const ArrowIconWidget(),
                        const ArrowIconWidget(),
                        DragTarget<String>(
                          onAccept: (data) {
                            Navigator.of(context).pop();
                          },
                          builder: (context, l, ll) {
                            return _buildIconWidget(
                                "assets/day62/shopping-bag.png",
                                const Color(0xFF0B111D));
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _buildIconWidget(String path, Color color) {
    return Container(
      width: 48,
      height: 48,
      padding: const EdgeInsets.all(4),
      decoration: ShapeDecoration(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(48),
        ),
      ),
      child: Center(
        child: SizedBox(
          width: 24,
          height: 24,
          child: Image.asset(
            path,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}

class ArrowIconWidget extends StatelessWidget {
  const ArrowIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0x33737373),
            Colors.white,
            Colors.white,
            Color(0x33737373),
          ],
        ).createShader(bounds);
      },
      child: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: Color(0xFF458BDF),
      ),
    );
  }
}
