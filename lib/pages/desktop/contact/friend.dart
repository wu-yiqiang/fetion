import 'package:fetion/common/const.dart' show white10;
import 'package:fetion/widgets/Avatar.dart' show Avatar;
import 'package:fetion/widgets/Texts.dart';
import 'package:flutter/material.dart';

class Friend extends StatefulWidget {
  const Friend({super.key});
  @override
  State<Friend> createState() => _Friend();
}

class _Friend extends State<Friend> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: white10)),
        ),
        child: Row(
          spacing: 10,
          children: [
            Avatar(size: 30, image: "assets/images/user.jpg"),
            Expanded(
              child: Texts(text: "Sutter"),
            ),
          ],
        ),
      ),
    );
  }
}
