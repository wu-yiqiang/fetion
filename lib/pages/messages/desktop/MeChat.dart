import 'package:fetion/pages/messages/desktop/widges/ChatBox.dart' show ChatBox;
import 'package:fetion/pages/messages/desktop/widges/TimeStamps.dart'
    show TimeStamps;
import 'package:fetion/widgets/Avatar.dart' show Avatar;
import 'package:flutter/material.dart';

class MeChat extends StatefulWidget {
  MeChat({super.key, required this.item});
  final Map item;
  State<MeChat> createState() => _MeChat();
}

class _MeChat extends State<MeChat> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.horizontal,
      spacing: 10,
      children: [
        Expanded(flex: 2, child: Container(child: null)),
        Expanded(
          flex: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TimeStamps(timeStamp: widget.item['time']),
              ChatBox(text: widget.item['text']),
            ],
          ),
        ),
        Avatar(image: widget.item['avatar'], size: 30),
      ],
    );
  }
}
