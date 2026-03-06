import 'package:fetion/common/const.dart';
import 'package:fetion/pages/desktop/contacts/controller/contact_controller.dart';
import 'package:fetion/pages/desktop/contacts/person_info.dart';
import 'package:fetion/pages/desktop/contacts/persons.dart';
import 'package:fetion/pages/desktop/contacts/operation_bar.dart';
import 'package:fetion/pages/desktop/messages/single_dialog.dart';
import 'package:fetion/widgets/Empty.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

class ContactBar extends StatefulWidget {
  const ContactBar({super.key});
  @override
  State<ContactBar> createState() => _ContactBar();
}

class _ContactBar extends State<ContactBar> {
  late UserController userController;

  @override
  void initState() {
    super.initState();
    userController = Get.find<UserController>();
    userController.getUserLists();
  }

  void dispose() {
    super.dispose();
    userController.sessionId.value = "";
    userController.userId.value = "";
    userController.clearUserLists();
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    return Row(
      children: [
        Container(
          width: secondBarWidth,
          color: theme.scaffoldBackgroundColor,
          child: Column(
            children: [
              Row(children: [Expanded(child: OperationBar())]),
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
            return Empty();
          }
        }),
      ],
    );
  }
}
