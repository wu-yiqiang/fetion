import 'package:fetion/common/const.dart' show white20;
import 'package:fetion/common/light-theme.dart';
import 'package:flutter/material.dart';

class TimeStamps extends StatefulWidget {
  const TimeStamps({super.key, required this.timeStamp});
  final String timeStamp;
  @override
  State<TimeStamps> createState() => _TimeStamps();
}

class _TimeStamps extends State<TimeStamps> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        widget.timeStamp,
        style: TextStyle(fontSize: 11, color: black90),
      ),
    );
  }
}
