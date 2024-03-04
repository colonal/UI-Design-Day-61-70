import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Day66Background extends StatelessWidget {
  final Widget child;
  final bool onlyTop;
  const Day66Background({required this.child, this.onlyTop = false, super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: -size.height * .1 * .5,
            child: Container(
              width: size.width * .8,
              height: size.height * .1,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 60,
                    spreadRadius: 10,
                    offset: Offset(size.width * .2, 0),
                    color: const Color(0xFFFAD823).withOpacity(.8),
                  ),
                  BoxShadow(
                    blurRadius: 60,
                    spreadRadius: 10,
                    offset: const Offset(0, 0),
                    color: const Color(0xFFFFFFFF).withOpacity(.8),
                  ),
                  BoxShadow(
                    blurRadius: 60,
                    spreadRadius: 10,
                    offset: Offset(-size.width * .2, 0),
                    color: const Color(0xFFFA4A23).withOpacity(.8),
                  ),
                ],
              ),
            ),
          ),
          if (!onlyTop)
            PositionedDirectional(
              start: size.width * .05,
              top: size.height * .15,
              child: Container(
                width: size.width * .4,
                height: size.height * .4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      spreadRadius: 1,
                      offset: Offset(size.width * .4 * .2, 0),
                      color: const Color(0xFFFAD823).withOpacity(.1),
                    ),
                    BoxShadow(
                      blurRadius: 20,
                      spreadRadius: 1,
                      offset: const Offset(0, 0),
                      color: const Color(0xFFFFFFFF).withOpacity(.1),
                    ),
                    BoxShadow(
                      blurRadius: 20,
                      spreadRadius: 1,
                      offset: Offset(-size.width * .4 * .2, 0),
                      color: const Color(0xFFFA4A23).withOpacity(.1),
                    ),
                  ],
                ),
              ),
            ),
          if (!onlyTop)
            PositionedDirectional(
              start: size.width * .9,
              bottom: size.height * .1,
              child: Container(
                width: size.width * .4,
                height: size.height * .4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20,
                      spreadRadius: 1,
                      color: const Color(0xFFFAD823).withOpacity(.2),
                    ),
                    BoxShadow(
                      blurRadius: 20,
                      spreadRadius: 1,
                      color: const Color(0xFFFFFFFF).withOpacity(.2),
                    ),
                    BoxShadow(
                      blurRadius: 20,
                      spreadRadius: 1,
                      color: const Color(0xFFFA4A23).withOpacity(.2),
                    ),
                  ],
                ),
              ),
            ),
          if (!onlyTop)
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: size.width,
                child: SvgPicture.asset(
                  "assets/day66/Looper.svg",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          SafeArea(child: child),
        ],
      ),
    );
  }
}
