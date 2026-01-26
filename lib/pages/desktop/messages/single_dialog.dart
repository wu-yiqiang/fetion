import 'package:fetion/pages/desktop/messages/input_dialog.dart';
import 'package:fetion/pages/desktop/messages/main_dialog.dart';
import 'package:fetion/pages/desktop/messages/single_topbar.dart';
import 'package:flutter/material.dart';

class SingleDialog extends StatefulWidget {
  final String userId;
  const SingleDialog(this.userId, {super.key});
  @override
  State<SingleDialog> createState() => _SingleDialog();
}

class _SingleDialog extends State<SingleDialog> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SingleTopbar(),
        Expanded(
          child: MainDialog(),
        ),
        InputDialog(),
      ],
    );
  }
}
