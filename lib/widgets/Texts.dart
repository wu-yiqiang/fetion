import 'package:flutter/material.dart';

Texts({
  required String text,
  double fontSize = 14,
  fontWeight = FontWeight.w400,
  maxLines = 1,
  overflow = TextOverflow.ellipsis,
color = Colors.white
}) {
  return Text(
    text,
    maxLines: maxLines,
    overflow: overflow,
    style: TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
  );
}
