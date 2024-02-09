import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class ImageSliderThumbCircle extends SliderComponentShape {
  final ui.Image image;

  const ImageSliderThumbCircle({
    required this.image,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size.square(0);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) async {
    final canvas = context.canvas;

    final imageWidth = image.width.toDouble(); // Ensure width is double
    final imageHeight = image.height.toDouble(); // Ensure height is double

    // Calculate the offset with padding
    Offset imageOffset = Offset(
      center.dx - (imageWidth / 2),
      center.dy - (imageHeight / 2),
    );

    Paint paint = Paint()..filterQuality = FilterQuality.high;

    canvas.drawImage(image, imageOffset, paint);

    //
    final outerPathColor = Paint()
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..imageFilter = ui.ImageFilter.blur(sigmaX: .5, sigmaY: .5)
      ..shader = LinearGradient(
        colors: [
          Colors.black.withOpacity(.2),
          Colors.black.withOpacity(.0),
        ],
      ).createShader(Rect.fromPoints(
          Offset(imageOffset.dx - 30, imageOffset.dy),
          Offset(imageOffset.dx + 30, imageOffset.dy)));

    var outerPath = Path();

    outerPath.addOval(Rect.fromCircle(
      center: center,
      radius: 26,
    ));

    canvas.drawPath(outerPath, outerPathColor);

    //
    final borderPathColor = Paint()
      ..color = Colors.white.withOpacity(.2)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    var borderPath = Path();

    borderPath.addOval(Rect.fromCircle(
      center: center,
      radius: 26,
    ));

    canvas.drawPath(borderPath, borderPathColor);
  }

  // @override
  // void paint(
  //   PaintingContext context,
  //   Offset center, {
  //   required Animation<double> activationAnimation,
  //   required Animation<double> enableAnimation,
  //   required bool isDiscrete,
  //   required TextPainter labelPainter,
  //   required RenderBox parentBox,
  //   required SliderThemeData sliderTheme,
  //   required TextDirection textDirection,
  //   required double value,
  //   required double textScaleFactor,
  //   required Size sizeWithOverflow,
  // }) async {
  //   final canvas = context.canvas;

  //   final imageWidth = image.width;
  //   final imageHeight = image.height;

  //   Offset imageOffset = Offset(
  //     center.dx - (imageWidth / 2),
  //     center.dy - (imageHeight / 2),
  //   );

  //   Paint paint = Paint()..filterQuality = FilterQuality.high;

  //   //
  //   final outerPathColor = Paint()
  //     ..strokeCap = StrokeCap.round
  //     ..style = PaintingStyle.fill
  //     ..imageFilter = ui.ImageFilter.blur(sigmaX: .5, sigmaY: .5)
  //     ..shader = LinearGradient(
  //       colors: [
  //         Colors.black.withOpacity(.2),
  //         Colors.black.withOpacity(.0),
  //       ],
  //     ).createShader(Rect.fromPoints(
  //         Offset(imageOffset.dx - 30, imageOffset.dy),
  //         Offset(imageOffset.dx + 30, imageOffset.dy)));

  //   var outerPath = Path();

  //   outerPath.addOval(Rect.fromCircle(
  //     center: center,
  //     radius: 26,
  //   ));

  //   canvas.drawPath(outerPath, outerPathColor);

  //   final borderPathColor = Paint()
  //     ..color = Colors.white.withOpacity(.2)
  //     ..strokeWidth = 2
  //     ..style = PaintingStyle.stroke;

  //   var borderPath = Path();

  //   borderPath.addOval(Rect.fromCircle(
  //     center: center,
  //     radius: 26,
  //   ));

  //   canvas.drawPath(borderPath, borderPathColor);
  //   //

  //   canvas.drawImage(image, imageOffset, paint);
  // }
}

class CustomSliderOverlayShape extends RoundSliderOverlayShape {
  final double thumbRadius;
  const CustomSliderOverlayShape({this.thumbRadius = 10.0});

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    super.paint(
        context, center.translate(-(value - 0.5) / 0.5 * thumbRadius, 0.0),
        activationAnimation: activationAnimation,
        enableAnimation: enableAnimation,
        isDiscrete: isDiscrete,
        labelPainter: labelPainter,
        parentBox: parentBox,
        sliderTheme: sliderTheme,
        textDirection: textDirection,
        value: value,
        textScaleFactor: textScaleFactor,
        sizeWithOverflow: sizeWithOverflow);
  }
}

class CustomSliderTrackShape extends SliderTrackShape
    with BaseSliderTrackShape {
  @override
  void paint(
    PaintingContext context,
    ui.Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required ui.TextDirection textDirection,
    required ui.Offset thumbCenter,
    ui.Offset? secondaryOffset,
    bool isEnabled = false,
    bool isDiscrete = false,
    double additionalActiveTrackHeight = 0,
  }) {
    assert(sliderTheme.disabledActiveTrackColor != null);
    assert(sliderTheme.disabledInactiveTrackColor != null);
    assert(sliderTheme.activeTrackColor != null);
    assert(sliderTheme.inactiveTrackColor != null);
    assert(sliderTheme.thumbShape != null);

    if (sliderTheme.trackHeight == null || sliderTheme.trackHeight! <= 0) {
      return;
    }

    final ColorTween activeTrackColorTween = ColorTween(
        begin: sliderTheme.disabledActiveTrackColor,
        end: sliderTheme.activeTrackColor);
    final ColorTween inactiveTrackColorTween = ColorTween(
        begin: sliderTheme.disabledInactiveTrackColor,
        end: sliderTheme.inactiveTrackColor);

    final Paint activePaint = Paint()
      ..color = activeTrackColorTween.evaluate(enableAnimation)!;
    final Paint inactivePaint = Paint()
      ..color = inactiveTrackColorTween.evaluate(enableAnimation)!;

    final Paint leftTrackPaint;
    final Paint rightTrackPaint;

    switch (textDirection) {
      case TextDirection.ltr:
        leftTrackPaint = activePaint;
        rightTrackPaint = inactivePaint;
        break;
      case TextDirection.rtl:
        leftTrackPaint = inactivePaint;
        rightTrackPaint = activePaint;
        break;
    }

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    activePaint.shader = ui.Gradient.linear(
      ui.Offset(trackRect.left, 0),
      ui.Offset(thumbCenter.dx, 0),
      [
        const Color(0xFF046EEA),
        const Color(0xFF6AAFFF),
      ],
    );

    final Radius trackRadius = Radius.circular(trackRect.height / 3.5);

    // Active/Inactive tracks
    context.canvas.drawRRect(
      RRect.fromLTRBR(
        trackRect.left,
        (textDirection == TextDirection.ltr)
            ? trackRect.top - (additionalActiveTrackHeight / 2)
            : trackRect.top,
        thumbCenter.dx,
        (textDirection == TextDirection.ltr)
            ? trackRect.bottom + (additionalActiveTrackHeight / 2)
            : trackRect.bottom,
        trackRadius,
      ),
      leftTrackPaint,
    );

    context.canvas.drawRRect(
      RRect.fromLTRBR(
        thumbCenter.dx,
        (textDirection == TextDirection.rtl)
            ? trackRect.top - (additionalActiveTrackHeight / 2)
            : trackRect.top,
        trackRect.right,
        (textDirection == TextDirection.rtl)
            ? trackRect.bottom + (additionalActiveTrackHeight / 2)
            : trackRect.bottom,
        trackRadius,
      ),
      rightTrackPaint,
    );
  }
}
