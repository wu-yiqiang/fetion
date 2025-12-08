import 'package:fetion/pages/messages/desktop/messages.dart';
import 'package:flutter/material.dart';
import './search_bar.dart';

class MessageBar extends StatefulWidget {
  const MessageBar({super.key});
  @override
  State<MessageBar> createState() => _MessageBar();
}

class _MessageBar extends State<MessageBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 260,
        color: const Color.fromARGB(255, 240, 240, 240),
        child: Column(
          children: [
            Row(children: [Expanded(child: SearchsBar())]),
            Expanded(child: Messages()),
          ],
      ),
    );
  }
}
