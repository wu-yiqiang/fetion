import 'package:fetion/pages/messages/desktop/message.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});
  @override
  State<Messages> createState() => _Messages();
}

class _Messages extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        spacing: 10,
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
    );
  }
}
