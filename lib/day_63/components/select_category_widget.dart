import 'package:flutter/material.dart';

final List<String> categories = [
  "All",
  "Power",
  "Full body",
  "Yoga",
];

class SelectCategoryWidget extends StatefulWidget {
  const SelectCategoryWidget({super.key});

  @override
  State<SelectCategoryWidget> createState() => _SelectCategoryWidgetState();
}

class _SelectCategoryWidgetState extends State<SelectCategoryWidget> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 41,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return Center(
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: index == selected
                      ? const Color(0xFF046EEA)
                      : const Color(0xFF252533),
                ),
                child: Text(
                  categories[index],
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
