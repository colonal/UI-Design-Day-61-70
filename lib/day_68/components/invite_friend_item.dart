import 'package:flutter/material.dart';
import 'package:ui_design_day_61_70/day_68/model/friends.dart';

class InviteFriendItem extends StatefulWidget {
  final Friends friends;
  const InviteFriendItem(this.friends, {super.key});

  @override
  State<InviteFriendItem> createState() => _InviteFriendItemState();
}

class _InviteFriendItemState extends State<InviteFriendItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(48),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
              image: DecorationImage(
                image: NetworkImage(widget.friends.image),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            widget.friends.name,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const Spacer(),
          widget.friends.isFriend
              ? Guest(
                  onTap: () {
                    setState(() {
                      widget.friends.isFriend = !widget.friends.isFriend;
                    });
                  },
                )
              : Add(
                  onTap: () {
                    setState(() {
                      widget.friends.isFriend = !widget.friends.isFriend;
                    });
                  },
                )
        ],
      ),
    );
  }
}

class Guest extends StatelessWidget {
  final void Function()? onTap;

  const Guest({this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Center(
            child: Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF48B017),
              ),
              child: const Icon(
                Icons.done,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(width: 8),
          const Text(
            "Guest",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}

class Add extends StatelessWidget {
  final void Function()? onTap;
  const Add({this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.black,
      ),
      child: InkWell(
        onTap: onTap,
        child: const Row(
          children: [
            Icon(
              Icons.add,
              color: Colors.white,
            ),
            SizedBox(width: 8),
            Text(
              "Add",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
