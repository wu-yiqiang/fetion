import 'package:fluent_ui/fluent_ui.dart';

class Empty extends StatelessWidget {
  const Empty({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(child: Center(child: Icon(WindowsIcons.unknown, size: 60)));
  }
}
