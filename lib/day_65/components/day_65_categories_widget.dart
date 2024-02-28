import 'package:flutter/material.dart';

class Day65CategoriesWidget extends StatefulWidget {
  const Day65CategoriesWidget({super.key});

  @override
  State<Day65CategoriesWidget> createState() => _Day65CategoriesWidgetState();
}

class _Day65CategoriesWidgetState extends State<Day65CategoriesWidget> {
  int selectedIndex = 0;

  static const List items = [
    "All",
    "House",
    "Villa",
    "Mansion",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 24),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsetsDirectional.only(end: 26),
            child: Text(
              "Discover the house of your dreams",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(height: 28),
          SizedBox(
            height: 50,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: items.length,
              separatorBuilder: (_, __) => const SizedBox(width: 12),
              itemBuilder: (context, index) => InkWell(
                borderRadius: BorderRadius.circular(48),
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: AnimatedCrossFade(
                  firstChild: UnSelectedItem(item: items[index]),
                  secondChild: SelectedItem(item: items[index]),
                  crossFadeState: selectedIndex == index
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(milliseconds: 300),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SelectedItem extends StatelessWidget {
  const SelectedItem({
    super.key,
    required this.item,
  });

  final String item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(48),
      ),
      child: Text(
        item,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}

class UnSelectedItem extends StatelessWidget {
  const UnSelectedItem({
    super.key,
    required this.item,
  });

  final String item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      decoration: BoxDecoration(
          color: const Color(0xff200F35),
          borderRadius: BorderRadius.circular(48)),
      child: Text(
        item,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
