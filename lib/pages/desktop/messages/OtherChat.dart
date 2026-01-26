import 'package:fetion/common/light-theme.dart';
import 'package:fetion/pages/desktop/messages/widges/ChatBox.dart' show ChatBox;
import 'package:fetion/pages/desktop/messages/widges/TimeStamps.dart'
    show TimeStamps;
import 'package:fetion/widgets/Avatar.dart' show Avatar;
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class OtherChat extends StatefulWidget {
  OtherChat({super.key, required this.item});
  final Map item;
  State<OtherChat> createState() => _OtherChat();
}

class _OtherChat extends State<OtherChat> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.horizontal,
      spacing: 10,
      children: [
        Avatar(image: widget.item['avatar'], size: 30),
        Expanded(
          flex: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TimeStamps(timeStamp: widget.item['time']),
              ChatBox(
                text: widget.item['text'],
                fontColor: white,
                backgroundColor: primaryColor,
              ),
            ],
          ),
        ),
        Expanded(flex: 2, child: Container(child: null)),
      ],
    );
  }
}
