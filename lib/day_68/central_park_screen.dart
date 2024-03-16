import 'package:flutter/material.dart';

import 'components/central_park_top_widget.dart';
import 'components/invite_friends.dart';
import 'components/pay_now.dart';

class CentralParkScreen extends StatelessWidget {
  const CentralParkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE1E4EA),
      body: Column(
        children: [
          CentralParkTopWidget(),
          SizedBox(height: 24),
          Expanded(child: InviteFriends()),
          SizedBox(height: 20),
          PayNow(),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}
