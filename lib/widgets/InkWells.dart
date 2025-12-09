import 'package:flutter/material.dart';

InkWells({
  required Widget child,
  required Function onPress,
}) {
  return InkWell(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    child: child,
    onTap: () {
      onPress();
    },
  );
}
