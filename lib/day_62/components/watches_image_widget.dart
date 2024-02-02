import 'package:flutter/material.dart';

class WatchesImageWidget extends StatefulWidget {
  const WatchesImageWidget({super.key});

  @override
  State<WatchesImageWidget> createState() => _WatchesImageWidgetState();
}

class _WatchesImageWidgetState extends State<WatchesImageWidget> {
  @override
  void didChangeDependencies() {
    precacheImage(const AssetImage("assets/day62/watches5.png"), context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Image.asset(
          "assets/day62/watches5.png",
          filterQuality: FilterQuality.low,
          fit: BoxFit.fitWidth,
          cacheHeight: 5575,
          cacheWidth: 7860,
          scale: 1.0,
          frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
            return AnimatedOpacity(
              opacity: frame != null ? 1 : 0,
              duration: const Duration(seconds: 0),
              curve: Curves.easeOut,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
