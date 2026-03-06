import 'package:fluent_ui/fluent_ui.dart';
import 'package:fetion/pages/desktop/messages/search_bar.dart';

class PersonBox extends StatefulWidget {
  const PersonBox({super.key});
  @override
  State<PersonBox> createState() => _PersonBox();
}

class _PersonBox extends State<PersonBox> {

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context); 
    return Container(
      width: 260,
      color: theme.scaffoldBackgroundColor,
      child: Column(
        children: [
          SearchsBar()
        ],
      ),
    );
  }
}
