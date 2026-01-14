import 'package:fetion/common/const.dart';
import 'package:fetion/pages/desktop/messages/messages.dart';
import 'package:fetion/pages/desktop/messages/single_dialog.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'search_bar.dart';

class MessageBar extends StatefulWidget {
  const MessageBar({super.key});
  @override
  State<MessageBar> createState() => _MessageBar();
}

class _MessageBar extends State<MessageBar> {
  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context); 
    return Row(
      children: [
        Container(
          width: SecondBarWidth,
          color: theme.scaffoldBackgroundColor,
          child: Column(
            children: [
              Row(children: [Expanded(child: SearchsBar())]),
              Expanded(child: Messages()),
            ],
          ),
        ),
        Expanded(child: SingleDialog()),
      ],
    );
  }
}
