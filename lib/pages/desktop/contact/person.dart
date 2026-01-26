import 'package:fetion/common/const.dart';
import 'package:fetion/db/models/user.model.dart';
import 'package:fetion/pages/desktop/contact/controller/contact_controller.dart';
import 'package:fetion/pages/desktop/contact/widgets/DeleteDialog.dart';
import 'package:fetion/pages/desktop/contact/widgets/RenameDialog.dart';
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
    final theme = FluentTheme.of(context);
    return FlyoutTarget(
      controller: menuController,
      child: Obx(() {
        return Container(
          color: userController.userId.value == widget.item.id
              ? theme.inactiveBackgroundColor
              : null,
          padding: EdgeInsets.all(4),
          child: GestureDetector(
            onTap: () {
              userController.userId.value = widget.item.id;
            },
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  spacing: 10,
                  children: [
                    Avatar(
                      size: 30,
                      image: widget.item?.avatar ?? DefaultAvatar,
                    ),
                    Expanded(
                      child: Texts(
                        text: widget.item.remarks ?? widget.item.nickName,
                      ),
                    ),
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
                        leading: WindowsIcon(WindowsIcons.rename),
                        text: Text('rename'.tr),
                        onPressed: () {
                          RenameDialog(
                            context,
                            widget.item.remarks,
                            widget.item.id,
                            menuController,
                          );
                        },
                      ),
                      MenuFlyoutItem(
                        leading: WindowsIcon(WindowsIcons.delete),
                        text: Text('delete'.tr),
                        onPressed: () {
                          DeleteDialog(context, widget.item.id, menuController);
                        },
                      ),
                      const MenuFlyoutSeparator(),
                      MenuFlyoutItem(
                        leading: WindowsIcon(WindowsIcons.group_list),
                        text: Text('Sort'),
                        onPressed: Flyout.of(context).close,
                      ),
                    ],
                  );
                },
              );
            },
          ),
        );
      }),
    );
  }
}
