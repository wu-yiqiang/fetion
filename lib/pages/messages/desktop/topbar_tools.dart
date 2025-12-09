import 'package:fetion/widgets/InkWells.dart' show InkWells;
import 'package:flutter/material.dart';

class TopbarTools extends StatefulWidget {
  const TopbarTools({super.key});
  @override
  State<TopbarTools> createState() => _TopbarTools();
}

class _TopbarTools extends State<TopbarTools> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        InkWells(child: Icon(Icons.call_outlined, size: 24), onPress: () {}),
        InkWells(
          child: Icon(Icons.video_chat_outlined, size: 24),
          onPress: () {},
        ),
        InkWells(
          child: Icon(Icons.desktop_windows_outlined, size: 24),
          onPress: () {},
        ),
      ],
    );
  }
}
