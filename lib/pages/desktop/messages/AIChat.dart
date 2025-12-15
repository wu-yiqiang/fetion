import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/pages/desktop/messages/widges/ChatBox.dart' show ChatBox;
import 'package:fetion/pages/desktop/messages/widges/TimeStamps.dart'
    show TimeStamps;
import 'package:fetion/widgets/Avatar.dart' show Avatar;
import 'package:flutter/material.dart';

class AiChat extends StatefulWidget {
  AiChat({super.key, required this.item});
  final Map item;
  State<AiChat> createState() => _AiChat();
}

class _AiChat extends State<AiChat> {
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
              ChatBox(text: widget.item['text'], fontColor: black90,backgroundColor: black4,),
            ],
          ),
        ),
        Expanded(flex: 2, child: Container(child: null)),
      ],
    );
  }
}
