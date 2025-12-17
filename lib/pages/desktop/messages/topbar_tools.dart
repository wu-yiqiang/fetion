import 'package:fetion/widgets/FluentIcon.dart';
import 'package:fetion/widgets/SvgIcon.dart';
import 'package:fluent_ui/fluent_ui.dart';

class TopbarTools extends StatefulWidget {
  const TopbarTools({super.key});
  @override
  State<TopbarTools> createState() => _TopbarTools();
}

class _TopbarTools extends State<TopbarTools> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        SvgIcon(name: 'search', onTap: () {}),
        FluentIcon(icon: FluentIcons.more, onTap: () {})
      ],
    );
  }
}
