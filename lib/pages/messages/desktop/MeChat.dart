import 'package:fetion/common/const.dart';
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
              Container(
                child: Text(
                  widget.item['time'],
                  style: TextStyle(fontSize: 14, color: primaryColor),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  widget.item['text'],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
          width: 40,
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(widget.item['avatar']),
          ),
        ),
      ],
    );
  }
}
