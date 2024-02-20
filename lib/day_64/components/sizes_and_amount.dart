import 'package:flutter/material.dart';

import 'amount_widget.dart';
import 'enum.dart';
import 'sizes_widget.dart';

class SizesAndAmount extends StatelessWidget {
  final SizePizza sizePizza;

  final void Function(SizePizza) call;
  const SizesAndAmount(this.sizePizza, this.call, {super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: SizesWidget(sizePizza, call),
          ),
          VerticalDivider(
            width: 1,
            color: const Color(0xFF131313).withOpacity(.08),
            thickness: 1,
          ),
          const Expanded(
            child: AmountWidget(),
          ),
        ],
      ),
    );
  }
}
