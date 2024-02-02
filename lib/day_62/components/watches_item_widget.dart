import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_62/components/custom_clipper_painter.dart';

import '../watches_screen.dart';

class WatchesItemWidget extends StatelessWidget {
  final ({
    String image,
    String title,
    String subTitle,
    int size,
    String price
  }) item;
  const WatchesItemWidget({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: 224,
        height: double.infinity,
        child: Stack(
          children: [
            Column(
              children: [
                const Expanded(
                  child: ColoredBox(
                    color: Colors.transparent,
                    child: Center(),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: CustomBackgroundPainter(),
                        child: Container(
                          color: const Color(0xff2C4166),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: ClipPath(
                              clipper: CustomShapePathClipper(),
                              child: Container(
                                width: 224,
                                height: 100,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.white.withOpacity(.15),
                                      Colors.white.withOpacity(0),
                                    ],
                                  ),
                                ),
                                child: CustomPaint(
                                  painter: CustomLineShapePathClipper(),
                                  child: const SizedBox(
                                    width: 224,
                                    height: 100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 224,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 120,
                      height: 208,
                      child: Image.asset(
                        item.image,
                        fit: BoxFit.fill,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      item.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Cinzel',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${item.size} MM',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 13,
                        fontFamily: 'Cinzel',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.subTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 13,
                        fontFamily: 'Cinzel',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '\$10,750',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 18,
                        fontFamily: 'Cinzel',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 29),
                  ],
                ),
              ),
            ),
            PositionedDirectional(
              bottom: 0,
              end: 0,
              child: InkWell(
                borderRadius: BorderRadius.circular(48),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const WatchesScreen()));
                },
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.all(12),
                  decoration: ShapeDecoration(
                    color: const Color(0xFF458ADE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48),
                    ),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    size: 24,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
