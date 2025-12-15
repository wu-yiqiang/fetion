import 'package:flutter/material.dart';
import 'package:fetion/pages/desktop/messages/search_bar.dart';

class FriendsBox extends StatefulWidget {
  const FriendsBox({super.key});
  @override
  State<FriendsBox> createState() => _FriendsBox();
}

class _FriendsBox extends State<FriendsBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      color: const Color.fromARGB(255, 240, 240, 240),
      child: Column(
        children: [
          SearchsBar()
        ],
      ),
    );
  }
}
