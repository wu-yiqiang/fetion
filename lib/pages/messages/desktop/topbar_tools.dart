import 'package:fetion/common/const.dart';
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
      children: [
        IconButton(icon: Icon(Icons.call_outlined), onPressed: () {}),
        IconButton(icon: Icon(Icons.video_chat_outlined), onPressed: () {}),
        IconButton(icon: Icon(Icons.desktop_windows_outlined), onPressed: () {}),
      ],
    );
  }
}
