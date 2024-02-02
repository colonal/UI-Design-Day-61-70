import 'package:flutter/material.dart';

class SelectSizeItemsWidget extends StatefulWidget {
  final List<int> sizes;
  const SelectSizeItemsWidget({required this.sizes, super.key});

  @override
  State<SelectSizeItemsWidget> createState() => _SelectSizeItemsWidgetState();
}

class _SelectSizeItemsWidgetState extends State<SelectSizeItemsWidget> {
  late int selected;
  late final FixedExtentScrollController _scrollController;

  @override
  void initState() {
    selected = (widget.sizes.length / 2).floor();
    _scrollController = FixedExtentScrollController(
        initialItem: (widget.sizes.length / 2).floor());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100,
          child: RotatedBox(
            quarterTurns: -1,
            child: ListWheelScrollView(
              magnification: 2.0,
              onSelectedItemChanged: (index) {
                setState(() {
                  selected = index;
                });
              },
              controller: _scrollController,
              itemExtent: 100,
              children: List.generate(
                widget.sizes.length,
                (index) => InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  splashColor: Colors.grey.withOpacity(.4),
                  onTap: index == selected
                      ? null
                      : () {
                          _scrollController.animateToItem(index,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.bounceInOut);
                        },
                  child: Stack(
                    children: [
                      Center(
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: index == selected
                              ? SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: Stack(
                                    children: [
                                      Transform.scale(
                                        scale: 1.35,
                                        child: ShaderMask(
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
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                width: 1,
                                                color: const Color(0xFF458BDF)
                                                    .withOpacity(0.2),
                                              ),
                                            ),
                                            child: const Center(),
                                          ),
                                        ),
                                      ),
                                      Transform.scale(
                                        scale: 1.2,
                                        child: ShaderMask(
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
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                width: 1,
                                                color: const Color(0xFF458BDF)
                                                    .withOpacity(0.5),
                                              ),
                                            ),
                                            child: const Center(),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding:
                                            const EdgeInsets.only(bottom: 4),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            width: 1.50,
                                            color: const Color(0xFF458BDF),
                                          ),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          '${widget.sizes[index]}',
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontFamily: 'Cinzel',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      const Positioned(
                                        bottom: 7,
                                        left: 0,
                                        right: 0,
                                        child: Column(
                                          children: [
                                            Text(
                                              'MM',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFF458BDB),
                                                fontSize: 12,
                                                fontFamily: 'Cinzel',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            CircleAvatar(
                                              radius: 2,
                                              backgroundColor:
                                                  Color(0xFF458BDB),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              : AnimatedContainer(
                                  duration: const Duration(milliseconds: 400),
                                  width: index == selected ? 60 : 50,
                                  height: index == selected ? 60 : 50,
                                  alignment: Alignment.center,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Opacity(
                                    opacity: index == selected ||
                                            index == selected + 1 ||
                                            index == selected - 1
                                        ? 1
                                        : .5,
                                    child: Text(
                                      '${widget.sizes[index]}MM',
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Cinzel',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        top: 0,
                        left: 0,
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: Opacity(
                            opacity: index == selected
                                ? 1
                                : index == selected + 1 || index == selected - 1
                                    ? .5
                                    : .3,
                            child: Center(
                              child: Container(
                                width: 2,
                                height: 10,
                                color: index == selected
                                    ? const Color(0xFF458BDF)
                                    : Colors.white,
                                child: const Center(),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 1,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                Colors.white.withOpacity(.5),
                Colors.transparent,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
