import 'package:fetion/pages/contact/desktop/friend.dart' show Friend;
import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});
  @override
  State<Friends> createState() => _Friends();
}

class _Friends extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        // padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
            Friend(),
          ],
        ),
      ),
    );
  }
}
