import 'package:flutter/material.dart';

import 'watches_item_widget.dart';

List<({String image, String title, String subTitle, int size, String price})>
    items = [
  (
    image: 'assets/day62/watches1.png',
    title: 'SUBMARINER',
    subTitle: 'Steel Oystersteel',
    size: 41,
    price: '\$10,750'
  ),
  (
    image: 'assets/day62/watches2.png',
    title: 'GMY-MASTER II',
    subTitle: 'OYSTERSTEEL AND EVEROSE GOLD',
    size: 40,
    price: '\$10,750'
  ),
  (
    image: 'assets/day62/watches3.png',
    title: 'Yacht-master 42',
    subTitle: 'Yellow GOLD',
    size: 42,
    price: '\$34,500'
  ),
];

class WatchesWidget extends StatefulWidget {
  const WatchesWidget({super.key});

  @override
  State<WatchesWidget> createState() => _WatchesWidgetState();
}

class _WatchesWidgetState extends State<WatchesWidget> {
  final ScrollController _scrollController = ScrollController();
  double _scrollProgress = 0.0;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      // Calculate the scroll progress
      setState(() {
        _scrollProgress = _scrollController.position.pixels /
            _scrollController.position.maxScrollExtent;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            children: [
              const Expanded(
                child: Text(
                  'NEW WATCHES',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Cinzel',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Expanded(
                child: LayoutBuilder(builder: (context, constraints) {
                  return Container(
                    height: 2,
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    child: FractionallySizedBox(
                      widthFactor:
                          _scrollProgress < ((31 / constraints.maxWidth))
                              ? ((31 / constraints.maxWidth))
                              : _scrollProgress * 2,
                      alignment: AlignmentDirectional.centerStart,
                      child: Center(
                        child: Container(
                          width: 31,
                          height: 2,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFDAE8F8),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        SizedBox(
          height: 400,
          child: ListView.builder(
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return WatchesItemWidget(item: items[index]);
            },
          ),
        ),
      ],
    );
  }
}
