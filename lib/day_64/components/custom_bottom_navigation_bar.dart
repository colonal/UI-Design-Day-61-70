import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectIndex = 0;
  static const List<({int count, String image, String title})> items = [
    (title: "Home", image: "assets/day64/Home.svg", count: 0),
    (title: "Notification", image: "assets/day64/Notification.svg", count: 2),
    (title: "Order", image: "assets/day64/Order.svg", count: 0),
    (title: "User", image: "assets/day64/User.svg", count: 0),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);

    return Center(
      child: Container(
        width: size.width * .9,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        height: 72,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(72),
        ),
        child: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            currentIndex: selectIndex,
            onTap: (index) {
              setState(() {
                selectIndex = index;
              });
            },
            selectedItemColor: const Color(0xFFF07D29),
            unselectedItemColor: const Color(0xFF717171),
            useLegacyColorScheme: true,
            items: items
                .asMap()
                .entries
                .map(
                  (e) => BottomNavigationBarItem(
                    backgroundColor: Colors.transparent,
                    icon: Stack(
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            e.value.image,
                            colorFilter: ColorFilter.mode(
                                e.key == selectIndex
                                    ? const Color(0xFFF07D29)
                                    : const Color(0xFF717171),
                                BlendMode.srcIn),
                          ),
                        ),
                        if (e.value.count != 0)
                          Align(
                            alignment: AlignmentDirectional.center,
                            child: Transform.translate(
                              offset: const Offset(15, -10),
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: const Color(0xFFF07D29),
                                child: Text(
                                  e.value.count.toString(),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                          )
                      ],
                    ),
                    label: e.value.title,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
