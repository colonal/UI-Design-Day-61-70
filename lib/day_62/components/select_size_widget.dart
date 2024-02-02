import 'package:flutter/material.dart';
import 'select_size_items_widget.dart';

List<int> sizes = [
  35,
  36,
  37,
  38,
  39,
  40,
  41,
  42,
  43,
  44,
  45,
];

class SelectSizeWidget extends StatelessWidget {
  const SelectSizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Select your size',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontSize: 14,
            fontFamily: 'Cinzel',
            fontWeight: FontWeight.w400,
          ),
        ),
        SelectSizeItemsWidget(sizes: sizes),
      ],
    );
  }
}
