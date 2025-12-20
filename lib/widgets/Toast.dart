import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';

Toast(InfoBarSeverity type, String text) {
  return InfoBar(
    title: Texts(text: text),
    severity: type,
    isLong: false,
  );
}
