import 'package:flutter/material.dart';

MouseRegions({required Widget child, required Function onPress}) {
  return MouseRegion(
    cursor: SystemMouseCursors.click,
    child: GestureDetector(
      onTap: () {
        print('dianjiale1');
        onPress();
      },
      child: child,
    ),
  );
}
