import 'package:flutter/material.dart';

import 'collection_custom_clipper_painter.dart';

class CollectionWidget extends StatelessWidget {
  const CollectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  'COLLECTION',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Cinzel',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                'SEE ALL',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Color(0xFF458ADE),
                  fontSize: 15,
                  fontFamily: 'Cinzel',
                  fontWeight: FontWeight.w700,
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 50),
        SizedBox(
          height: 200,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Stack(
                children: [
                  ClipPath(
                    clipper: CustomBackgroundPainter(),
                    child: Container(
                      color: const Color(0xff2C4166),
                      child: Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Row(
                          children: [
                            Expanded(
                              child: ClipPath(
                                clipper: CustomShapePathClipper(),
                                child: Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: AlignmentDirectional.centerEnd,
                                      end: AlignmentDirectional.centerStart,
                                      colors: [
                                        Colors.white.withOpacity(.15),
                                        Colors.white.withOpacity(0),
                                      ],
                                    ),
                                  ),
                                  child: CustomPaint(
                                    painter: CustomLineShapePathClipper(),
                                    child: const SizedBox(
                                      height: 200,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Expanded(flex: 1, child: SizedBox()),
                          ],
                        ),
                      ),
                    ),
                  ),
                  PositionedDirectional(
                    bottom: 0,
                    end: 0,
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
                  Row(
                    children: [
                      Expanded(
                          child: Transform.scale(
                        scale: 1.2,
                        child: Transform.translate(
                          offset: const Offset(-10, 0),
                          child: Image.asset(
                            "assets/day62/rolexxxx1.png",
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      )),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Flexible(
                                child: Text(
                                  'YACHT-MASTER 42',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Cinzel',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Text(
                                '42 MM',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 13,
                                  fontFamily: 'Cinzel',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'YELLOW GOLD',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 13,
                                  fontFamily: 'Cinzel',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '\$34,500',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 16,
                                  fontFamily: 'Cinzel',
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        )
      ],
    );
  }
}
