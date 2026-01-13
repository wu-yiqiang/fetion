import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/MouseRegions.dart';
import 'package:flutter/widgets.dart';

FluentIcon({
  required icon,
  double size = 17,
  required Function onTap,
}) {
  return MouseRegions(
    child: Icon(icon, size: size),
    onPress: () {
      onTap();
    },
  );
}
