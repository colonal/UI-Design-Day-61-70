import 'package:flutter/material.dart';

class AmountWidget extends StatefulWidget {
  const AmountWidget({super.key});

  @override
  State<AmountWidget> createState() => _AmountWidgetState();
}

class _AmountWidgetState extends State<AmountWidget> {
  int amount = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Amount",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF131313),
          ),
        ),
        const SizedBox(height: 14),
        SizedBox(
          height: 50,
          child: Stack(
            children: [
              Center(
                child: LayoutBuilder(builder: (context, constraints) {
                  return Container(
                    alignment: Alignment.center,
                    width: constraints.maxWidth * .8,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Center(),
                  );
                }),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: _buildButton(
                      "-",
                      () {
                        if (amount != 1) {
                          setState(() {
                            amount -= 1;
                          });
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        amount.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF131313),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: _buildButton("+", () {
                      setState(() {
                        amount += 1;
                      });
                    }),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildButton(String text, void Function()? onTap) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: onTap,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF131313),
          ),
        ),
      ),
    );
  }
}
