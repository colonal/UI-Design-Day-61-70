import 'package:flutter/material.dart';

class WatchesTopWidget extends StatelessWidget {
  const WatchesTopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 45),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(48),
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 48,
                  height: 48,
                  padding: const EdgeInsets.all(12),
                  decoration: ShapeDecoration(
                    color: const Color(0x3F24334E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48),
                    ),
                  ),
                  child: const Center(
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 32,
                height: 32,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/day62/crown.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                padding: const EdgeInsets.all(12),
                decoration: ShapeDecoration(
                  color: const Color(0x3F24334E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(48),
                  ),
                ),
                child: const Center(
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: Icon(
                      Icons.star_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Text(
            'Rolex',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 80,
              fontFamily: 'Cinzel',
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            'Air-King Luxury',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Cinzel',
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
