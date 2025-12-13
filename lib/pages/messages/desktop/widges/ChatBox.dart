import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:flutter/material.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({
    super.key,
    required this.text,
    required this.fontColor,
    required this.backgroundColor,
  });
  final String text;
  final Color fontColor;
  final Color backgroundColor;
  @override
  State<ChatBox> createState() => _ChatBox();
}

class _ChatBox extends State<ChatBox> {
  @override
  Widget build(BuildContext context) {
    String text = widget.text ?? "";
    String newtext = Characters(text).join('\u{200B}');
    return Container(
      // constraints: BoxConstraints(minWidth: 80),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: EdgeInsets.all(6),
      child: Flex(
        direction: Axis.vertical,
        spacing: 2,
        children: [
          Text(
            newtext,
            softWrap: true,
            style: TextStyle(
              color: widget.fontColor,
              fontSize: 13,
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
          ),
          // Flex(
          //   direction: Axis.horizontal,
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Texts(text: widget.timeStamp, fontSize: 10, color: black6),
          //   ],
          // ),
          // Container(
          //   width: 100,
          //   // constraints: BoxConstraints(minWidth: 80),
          //   child: Flex(
          //     direction: Axis.horizontal,
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       Texts(text: widget.timeStamp, fontSize: 10, color: black6),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
