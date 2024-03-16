import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReserveAvailable extends StatefulWidget {
  const ReserveAvailable({super.key});

  @override
  State<ReserveAvailable> createState() => _ReserveAvailableState();
}

class _ReserveAvailableState extends State<ReserveAvailable> {
  int _selectIndex = 0;
  static final items = [18, 19, 20, 21, 22, 23];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text.rich(
          TextSpan(text: "Available for ", children: [
            TextSpan(
                text: "October", style: TextStyle(color: Color(0xFF004ABE))),
          ]),
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 40,
          child: ListView.separated(
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => const SizedBox(width: 16),
            itemBuilder: (context, index) => InkWell(
              customBorder: const CircleBorder(),
              onTap: () {
                setState(() {
                  _selectIndex = index;
                });
              },
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: index == _selectIndex
                      ? const Color(0xff004ABE)
                      : Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: index == _selectIndex
                          ? const Color(0xff004ABE)
                          : const Color(0xFFC3C3C3),
                      width: 2),
                ),
                child: Center(
                  child: Text(
                    items[index].toString(),
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color:
                          index == _selectIndex ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
