import 'package:fetion/common/const.dart';
import 'package:flutter/material.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({super.key, required this.text});
  final String text;
  @override
  State<ChatBox> createState() => _ChatBox();
}

class _ChatBox extends State<ChatBox> {
  @override
  Widget build(BuildContext context) {
    String text = widget.text ?? "";
    String newtext = Characters(text).join('\u{200B}');
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: EdgeInsets.all(10),
      child: Text(
        newtext,
        softWrap: true,
        style: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
