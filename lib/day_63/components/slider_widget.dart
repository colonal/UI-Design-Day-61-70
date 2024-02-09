import 'dart:ui';

import 'package:flutter/material.dart';

import 'get_ui_image.dart';
import 'slider_component_shape.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double value = 50;
  SliderComponentShape? thumbShape;

  @override
  void initState() {
    load();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void load() {
    getUiImage("assets/day63/sliderImage.png", 30, 30).then((value) {
      thumbShape = ImageSliderThumbCircle(image: value);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: LayoutBuilder(builder: (context, constraint) {
        return Stack(
          children: [
            PositionedDirectional(
              start: 20,
              end: 20,
              child: Transform.scale(
                scaleY: 1.1,
                child: ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Container(
                      width: constraint.maxWidth,
                      height: constraint.maxHeight,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black.withOpacity(.35),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            PositionedDirectional(
              start: 20,
              end: 20,
              top: 0,
              bottom: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...List.generate(10, (_) {}).map(
                    (e) => CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.white.withOpacity(.08),
                    ),
                  )
                ],
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                inactiveTrackColor: Colors.transparent,
                trackHeight: 64.0,
                thumbShape: thumbShape,
                trackShape: CustomSliderTrackShape(),
                overlayShape: const CustomSliderOverlayShape(),
              ),
              child: Slider(
                min: 0,
                max: 100,
                divisions: 100,
                value: value,
                onChanged: (value) {
                  setState(() {
                    this.value = value;
                  });
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
