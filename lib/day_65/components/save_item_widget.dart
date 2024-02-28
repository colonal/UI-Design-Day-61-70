import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_design_day_61_70/day_65/components/button_widget.dart';
import 'package:ui_design_day_61_70/day_65/model/house.dart';

class SaveItemWidget extends StatefulWidget {
  final HouseModel house;
  const SaveItemWidget(this.house, {super.key});

  @override
  State<SaveItemWidget> createState() => _SaveItemWidgetState();
}

class _SaveItemWidgetState extends State<SaveItemWidget> {
  @override
  Widget build(BuildContext context) {
    return 1 == 1
        ? ButtonWidget(
            image: widget.house.save
                ? "assets/day65/save_active.svg"
                : "assets/day65/save.svg",
            onTap: () {
              setState(() {
                widget.house.save = !widget.house.save;
              });
            })
        : Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border:
                    Border.all(color: Colors.white.withOpacity(0.2), width: 2)),
            child: ClipOval(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(.15),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        widget.house.save = !widget.house.save;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: SvgPicture.asset(
                        widget.house.save
                            ? "assets/day65/save_active.svg"
                            : "assets/day65/save.svg",
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
