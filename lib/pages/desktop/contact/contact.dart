import 'package:fetion/common/const.dart';
import 'package:fetion/pages/desktop/contact/friend_info.dart';
import 'package:fetion/pages/desktop/contact/friends.dart';
import 'package:fetion/pages/desktop/contact/friends_box.dart' show FriendsBox;
import 'package:flutter/material.dart';

class ContactBar extends StatefulWidget {
  const ContactBar({super.key});
  @override
  State<ContactBar> createState() => _ContactBar();
}

class _ContactBar extends State<ContactBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: SecondBarWidth,
          color: const Color.fromARGB(255, 240, 240, 240),
          child: Column(
            children: [
              Row(children: [Expanded(child: FriendsBox())]),
              Expanded(child: Friends()),
            ],
          ),
        ),
        Expanded(child: FriendInfo()),
      ],
    );
  }
}
