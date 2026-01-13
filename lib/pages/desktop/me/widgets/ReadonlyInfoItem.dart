import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class ReadonlyInfoItem extends StatelessWidget {
  const ReadonlyInfoItem(String this.title, dynamic this.value, {super.key});
  final String title;
  final dynamic value;
  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    return Container(
      padding: EdgeInsets.only(bottom: 6, top: 6),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: black4)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Texts(text: title),
          Texts(text: value ?? ''),
        ],
      ),
    );
  }
}
