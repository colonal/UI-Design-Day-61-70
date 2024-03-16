import 'package:flutter/material.dart';

import '../model/events.dart';

class EventsMembers extends StatelessWidget {
  const EventsMembers({required this.events, super.key});

  final Events events;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      alignment: AlignmentDirectional.centerStart,
      fit: BoxFit.scaleDown,
      child: Row(
        children: [
          ...List.generate(
            events.friends.length > 5 ? 5 : events.friends.length,
            (index) => Transform.translate(
              offset: Offset(index * -10, 0),
              child: index == 4
                  ? Container(
                      width: 32,
                      height: 32,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "+${(events.friends.length - 4)}",
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  : Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(events.friends[index]),
                            fit: BoxFit.cover,
                            alignment: Alignment.topCenter),
                      ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
