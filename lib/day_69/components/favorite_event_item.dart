import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_design_day_61_70/day_69/events_screen.dart';

import 'show_date.dart';
import '../model/events.dart';
import 'add_favorite.dart';
import 'events_members.dart';

class FavoriteEventItem extends StatelessWidget {
  final Events events;
  const FavoriteEventItem(this.events, {super.key});

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 1, .0002)
        ..rotateX(0.07),
      alignment: Alignment.center,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => EventsScreen(events)));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(32),
              image: const DecorationImage(
                  image: AssetImage("assets/day69/card.png"), fit: BoxFit.fill),
            ),
            child: Column(
              children: [
                Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: AddFavorite(events)),
                Image.asset(
                  events.image,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: 14, left: 14, bottom: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: Container(
                        padding: const EdgeInsetsDirectional.only(
                            start: 22, top: 16, end: 18, bottom: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white.withOpacity(.1),
                        ),
                        child: Column(
                          children: [
                            LayoutBuilder(builder: (context, constraints) {
                              return Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: constraints.maxWidth * .7,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          events.title,
                                          style: const TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        const SizedBox(height: 12),
                                        _buildInfo(
                                          image: "assets/day69/location.svg",
                                          title: events.location,
                                        ),
                                        const SizedBox(height: 12),
                                        _buildInfo(
                                          image: "assets/day69/clock.svg",
                                          title: events.time,
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: constraints.maxWidth * .29,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: ShowDate(events),
                                    ),
                                  ),
                                ],
                              );
                            }),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(child: EventsMembers(events: events)),
                                Align(
                                  alignment: AlignmentDirectional.centerEnd,
                                  child: Text(
                                    events.price,
                                    style: const TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfo({required String image, required String title}) {
    return Row(
      children: [
        SvgPicture.asset(image),
        const SizedBox(width: 5),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
