import 'package:fetion/pages/desktop/messages/message.dart';
import 'package:fetion/widgets/ScrollViews.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});
  @override
  State<Messages> createState() => _Messages();
}

class _Messages extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return ScrollViews(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(4),
        child: Column(
          spacing: 4,
          children: [
            Message(),
            Message(),
            Message(),
            Message(),
            Message(),
            Message(),
            Message(),
            Message(),
            Message(),
            Message(),
            Message(),
            Message(),
            Message(),
            Message(),
            Message(),
            Message(),
          ],
        ),
      )
    );
  }
}
