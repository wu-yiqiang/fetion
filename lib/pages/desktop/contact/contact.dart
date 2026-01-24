import 'package:fetion/common/const.dart';
import 'package:fetion/pages/desktop/contact/person_info.dart';
import 'package:fetion/pages/desktop/contact/persons.dart';
import 'package:fetion/pages/desktop/contact/person_box.dart' show PersonBox;
import 'package:fluent_ui/fluent_ui.dart';

class ContactBar extends StatefulWidget {
  const ContactBar({super.key});
  @override
  State<ContactBar> createState() => _ContactBar();
}

class _ContactBar extends State<ContactBar> {
  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context); 
    return Row(
      children: [
        Container(
          width: SecondBarWidth,
          color: theme.scaffoldBackgroundColor,
          child: Column(
            children: [
              Row(children: [Expanded(child: PersonBox())]),
              Expanded(child: Persons()),
            ],
          ),
        ),
        Expanded(child: PersonInfo()),
      ],
    );
  }
}
