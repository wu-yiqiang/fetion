import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/db/models/user.model.dart';
import 'package:fetion/pages/desktop/contact/controller/contact_controller.dart';
import 'package:fetion/widgets/Avatar.dart' show Avatar;
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

class Person extends StatefulWidget {
  final User item;

  const Person(this.item, {super.key});

  @override
  State<Person> createState() => _Person();
}

class _Person extends State<Person> {
  final menuController = FlyoutController();
  late UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return FlyoutTarget(
      controller: menuController,
      child: GestureDetector(
        onTap: () {
          userController.userId.value = widget.item.id;
        },
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1, color: black4)),
            ),
            child: Row(
              spacing: 10,
              children: [
                Avatar(size: 30, image: DefaultAvatar),
                Expanded(child: Texts(text: widget.item.nickName)),
              ],
            ),
          ),
        ),
        onSecondaryTap: () {
          menuController.showFlyout<void>(
            autoModeConfiguration: FlyoutAutoConfiguration(
              preferredMode: FlyoutPlacementMode.topCenter,
            ),
            barrierDismissible: true,
            dismissOnPointerMoveAway: false,
            dismissWithEsc: true,
            // navigatorKey: rootNavigatorKey.currentState,
            builder: (context) {
              return MenuFlyout(
                items: [
                  MenuFlyoutItem(
                    leading: const WindowsIcon(WindowsIcons.share),
                    text: const Text('Share'),
                    onPressed: Flyout.of(context).close,
                  ),
                  MenuFlyoutItem(
                    leading: const WindowsIcon(WindowsIcons.copy),
                    text: const Text('Copy'),
                    onPressed: Flyout.of(context).close,
                  ),
                  MenuFlyoutItem(
                    leading: const WindowsIcon(WindowsIcons.delete),
                    text: const Text('Delete'),
                    onPressed: Flyout.of(context).close,
                  ),
                  const MenuFlyoutSeparator(),
                  MenuFlyoutItem(
                    text: const Text('Rename'),
                    onPressed: Flyout.of(context).close,
                  ),
                  MenuFlyoutItem(
                    text: const Text('Select'),
                    onPressed: Flyout.of(context).close,
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
