import 'package:fetion/common/light-theme.dart';
import 'package:flutter/material.dart';

class RowItem extends StatefulWidget {
  RowItem({super.key, required this.child});
  final Widget child;
  State<RowItem> createState() => _RowItem();
}

class _RowItem extends State<RowItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 18, right: 8, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.all(Radius.circular(4)),
        border: Border(bottom: BorderSide(width: 1, color: black4)),
      ),
      child: widget.child,
    );
  }
}
