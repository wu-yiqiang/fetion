import 'package:fetion/pages/desktop/contact/friend.dart' show Friend;
import 'package:fetion/widgets/ScrollViews.dart';
import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});
  @override
  State<Friends> createState() => _Friends();
}

class _Friends extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return ScrollViews(
      child: SingleChildScrollView(
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
