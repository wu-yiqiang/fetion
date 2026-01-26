import 'package:fetion/common/const.dart';
import 'package:fetion/pages/desktop/contact/controller/contact_controller.dart';
import 'package:fetion/pages/desktop/contact/person_info.dart';
import 'package:fetion/pages/desktop/contact/persons.dart';
import 'package:fetion/pages/desktop/contact/person_box.dart' show PersonBox;
import 'package:fetion/pages/desktop/messages/single_dialog.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

class ContactBar extends StatefulWidget {
  const ContactBar({super.key});
  @override
  State<ContactBar> createState() => _ContactBar();
}

class _ContactBar extends State<ContactBar> {
  late UserController userController = Get.put(UserController());
  void dispose() {
    super.dispose();
    userController.sessionId.value = '';
  }

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
        Obx(() {
          final userId = userController.userId.value;
          final sessionId = userController.sessionId.value;
          if (sessionId.isNotEmpty &&
              userId.isNotEmpty &&
              userId == sessionId) {
            return Expanded(child: SingleDialog(userId, key: Key(userId)));
          } else if (userId.isNotEmpty) {
            return Expanded(child: PersonInfo(userId));
          } else {
            return Expanded(
              child: Center(
                child: const WindowsIcon(WindowsIcons.unknown, size: 60),
              ),
            );
          }
        }),
      ],
    );
  }
}
