import 'package:fetion/widgets/ScrollViews.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({super.key});
  @override
  State<NoticePage> createState() => _NoticePage();
}

class _NoticePage extends State<NoticePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollViews(
      child: SingleChildScrollView(
        child: Flex(direction: Axis.vertical, children: [Text('Notices')]),
      ),
    );
  }
}
