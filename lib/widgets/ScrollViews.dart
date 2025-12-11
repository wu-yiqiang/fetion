import 'package:flutter/material.dart';

class ScrollViews extends StatefulWidget {
  ScrollViews({super.key, required this.child});
  final Widget child;
  State<ScrollViews> createState() => _ScrollViews();
}

class _ScrollViews extends State<ScrollViews> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: widget.child,
    );
  }
}
