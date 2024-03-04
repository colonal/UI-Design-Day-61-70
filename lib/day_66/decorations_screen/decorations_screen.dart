import 'package:flutter/material.dart';

import '../components/day_66_background.dart';
import '../model/decorations.dart';
import 'components/buttons_widget.dart';
import 'components/buy_now.dart';
import 'components/futuristic_metallic.dart';
import 'components/top_bar_widget.dart';
import 'components/decoration_image.dart';

class DecorationsScreen extends StatelessWidget {
  final Decorations decoration;
  const DecorationsScreen(this.decoration, {super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Day66Background(
        onlyTop: true,
        child: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return _buildBody(size, true);
          }
          return SingleChildScrollView(
            child: _buildBody(size, false),
          );
        }),
      ),
    );
  }

  Widget _buildBody(Size size, isExpanded) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 28, right: 28, top: 30, bottom: 16),
          child: TopBarWidget(decoration: decoration),
        ),
        FuturisticMetallic(decoration),
        const SizedBox(height: 26),
        isExpanded
            ? Expanded(
                child: SizedBox(
                  width: size.width * .7,
                  child: DecorationsImage(decoration),
                ),
              )
            : SizedBox(
                width: size.width * .7,
                height: 400,
                child: DecorationsImage(decoration),
              ),
        const SizedBox(height: 26),
        SizedBox(
          width: size.width * .5,
          height: 60,
          child: const ButtonsWidget(),
        ),
        const SizedBox(height: 26),
        SizedBox(width: size.width * .7, child: BuyNow(decoration: decoration))
      ],
    );
  }
}
