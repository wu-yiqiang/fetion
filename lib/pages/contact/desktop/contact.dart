import 'package:fetion/pages/contact/desktop/friends.dart';
import 'package:fetion/pages/contact/desktop/friends_box.dart' show FriendsBox;
import 'package:flutter/material.dart';

class ContactBar extends StatefulWidget {
  const ContactBar({super.key});
  @override
  State<ContactBar> createState() => _ContactBar();
}

class _ContactBar extends State<ContactBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      color: const Color.fromARGB(255, 240, 240, 240),
      child: Column(
        children: [
          Row(children: [Expanded(child: FriendsBox())]),
          Expanded(child: Friends()),
        ],
      ),
    );
  }
}
