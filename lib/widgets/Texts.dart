import 'package:fluent_ui/fluent_ui.dart';

class Texts extends StatelessWidget {
  final String text;

  final int maxLines;

  final TextOverflow overflow;

  final double fontSize;

  final FontWeight fontWeight;

  const Texts({
    super.key,
    required this.text,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
    double this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: TextDecoration.none,
      ),
    );
  }
}
