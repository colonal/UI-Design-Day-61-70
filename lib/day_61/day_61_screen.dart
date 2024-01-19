import 'package:flutter/material.dart';

import 'start_background_widget.dart';
import 'logo_widget.dart';
import 'next_page_widget.dart';

class Day61Screen extends StatelessWidget {
  const Day61Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: StartBackgroundWidget(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 64),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LogoWidget(),
                NextPageWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
