import 'package:fetion/common/const.dart' show primaryColor;
import 'package:fetion/widgets/Texts.dart';
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
    return Container(
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: EdgeInsets.all(10),
      child: Texts(text: widget.text, fontSize: 12),
    );
  }
}
