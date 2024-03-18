import 'package:flutter/material.dart';

class PeopleWidget extends StatelessWidget {
  const PeopleWidget(
      {required this.people, required this.borderColor, super.key});

  final List<String> people;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      alignment: AlignmentDirectional.centerStart,
      fit: BoxFit.scaleDown,
      child: Row(
        children: [
          ...List.generate(
            people.length > 5 ? 5 : people.length,
            (index) => Transform.translate(
              offset: Offset(index * -10, 0),
              child: index == 4
                  ? Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Center(
                        child: Text(
                          "+${(people.length - 4)}",
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    )
                  : Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        border: Border.all(color: borderColor, width: 2),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(people[index]),
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
