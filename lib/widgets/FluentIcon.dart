import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/InkWells.dart';
import 'package:fluent_ui/fluent_ui.dart';

FluentIcon({required IconData icon, double size = 17, required Function onTap}) {
  return InkWells(
      child: WindowsIcon(icon, size: size, color: black33),
      onPress: () {}
  );
}
