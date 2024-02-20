import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_64/components/enum.dart';

class SizesWidget extends StatefulWidget {
  final SizePizza sizePizza;
  final void Function(SizePizza) call;
  const SizesWidget(this.sizePizza, this.call, {super.key});

  @override
  State<SizesWidget> createState() => _SizesWidgetState();
}

class _SizesWidgetState extends State<SizesWidget> {
  int selectIndex = 0;
  @override
  void initState() {
    setState(() {
      selectIndex = SizePizza.values.indexOf(widget.sizePizza);
    });
    super.initState();
  }

  final sizes = SizePizza.values;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Size",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF131313),
          ),
        ),
        const SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: sizes
              .asMap()
              .entries
              .map((e) => e.key == selectIndex
                  ? ActiveSizesWidget(title: e.value.name)
                  : GestureDetector(
                      onTap: () {
                        selectIndex = e.key;
                        widget.call(e.value);
                      },
                      child: InActiveSizesWidget(title: e.value.name)))
              .toList(),
        ),
      ],
    );
  }
}

class InActiveSizesWidget extends StatelessWidget {
  final String title;
  const InActiveSizesWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
    );
  }
}

class ActiveSizesWidget extends StatelessWidget {
  final String title;
  const ActiveSizesWidget({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      decoration: const BoxDecoration(
        color: Color(0xFFF07D29),
        shape: BoxShape.circle,
      ),
      child: Text(
        title.toUpperCase(),
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
