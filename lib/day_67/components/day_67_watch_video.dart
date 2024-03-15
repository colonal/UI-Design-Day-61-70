import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_design_day_61_70/day_67/vision_pro_screen.dart';

class Day67WatchVideo extends StatelessWidget {
  const Day67WatchVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/day67/image.png"),
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const VisionProScreen(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.translate(
                    offset: const Offset(4, 0),
                    child: _background(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: SvgPicture.asset(
                              "assets/day67/play.svg",
                              width: 16,
                              height: 16,
                            ),
                          ),
                          const SizedBox(width: 8),
                          const Text(
                            "Watch video",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 22,
                      height: 22,
                      child: ClipOval(
                        child: _background(
                          child: const SizedBox(width: 22, height: 22),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(-4, 0),
                    child: _background(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset("assets/day67/3D-Rotate.svg"),
                          const SizedBox(width: 8),
                          const Text(
                            "Watch video",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 56),
          ],
        ),
      ),
    );
  }

  _background({required Widget child}) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF34353C),
        borderRadius: BorderRadius.circular(48),
      ),
      child: child,
    );
  }
}
