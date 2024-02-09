import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:image/image.dart' as image;

Future<ui.Image> getUiImage(
    String imageAssetPath, int height, int width) async {
  final ByteData assetImageByteData = await rootBundle.load(imageAssetPath);
  image.Image? baseSizeImage =
      image.decodeImage(assetImageByteData.buffer.asUint8List());
  // final resizeImage =image.copyResize(baseSizeImage!, width: width,height: height);
  ui.Codec codec =
      await ui.instantiateImageCodec(image.encodePng(baseSizeImage!));
  ui.FrameInfo frameInfo = await codec.getNextFrame();
  return frameInfo.image;
}
