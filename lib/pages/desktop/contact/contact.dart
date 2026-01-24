import 'package:fetion/common/const.dart';
import 'package:fetion/pages/desktop/contact/user_info.dart';
import 'package:fetion/pages/desktop/contact/users.dart';
import 'package:fetion/pages/desktop/contact/user_box.dart' show FriendsBox;
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
              Row(children: [Expanded(child: FriendsBox())]),
              Expanded(child: Friends()),
            ],
          ),
        ),
        Expanded(child: FriendInfo()),
      ],
    );
  }
}
