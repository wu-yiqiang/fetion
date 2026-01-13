import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors;

class ReadonlyInfoItem extends StatelessWidget {
  const ReadonlyInfoItem(
    this.title,
    this.value, {
    super.key,
    this.hasBorder = true,
  });
  final String title;
  final dynamic value;
  
  final dynamic hasBorder;
  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    return Container(
      padding: EdgeInsets.only(bottom: 6, top: 6),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1,
            color: hasBorder ? black4 : Colors.transparent,
          ),
        ),
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
