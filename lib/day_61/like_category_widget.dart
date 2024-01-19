import 'package:flutter/material.dart';

class LikeCategoryWidget extends StatefulWidget {
  const LikeCategoryWidget({super.key});

  @override
  State<LikeCategoryWidget> createState() => _LikeCategoryWidgetState();
}

class _LikeCategoryWidgetState extends State<LikeCategoryWidget> {
  int selectIndex = 0;
  final List items = [
    '🦜 Birds',
    '🦋 Butterflies',
    '🐨 Others',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 20),
        itemBuilder: (context, index) {
          return InkWell(
            borderRadius: BorderRadius.circular(40),
            onTap: () {
              setState(() {
                selectIndex = index;
              });
            },
            child: _buildItem(
              items[index],
              selectIndex == index,
            ),
          );
        },
      ),
    );
  }

  Widget _buildItem(String message, bool isSelected) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
          side: const BorderSide(color: Colors.white),
        ),
      ),
      child: Center(
        child: Text(
          message,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
