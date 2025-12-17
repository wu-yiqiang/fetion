import 'package:flutter/material.dart';

InkWells({required Widget child, required Function onPress}) {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: GestureDetector(
      onTap: () {
        onPress();
      },
      child: child,
    ),
  );
}
