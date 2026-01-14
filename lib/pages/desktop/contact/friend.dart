import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/Avatar.dart' show Avatar;
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';

class Friend extends StatefulWidget {
  final String name;

  const Friend(this.name, {super.key});

  @override
  State<Friend> createState() => _Friend();
}

class _Friend extends State<Friend> {
  final menuController = FlyoutController();

  @override
  Widget build(BuildContext context) {
    return FlyoutTarget(
      controller: menuController,
      child: GestureDetector(
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
                Expanded(child: Texts(text: widget.name)),
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
    // return MouseRegion(
    //   cursor: SystemMouseCursors.click,
    //   child: Container(
    //     padding: EdgeInsets.all(8),
    //     decoration: BoxDecoration(
    //       border: Border(bottom: BorderSide(width: 1, color: white110)),
    //     ),
    //     child: Row(
    //       spacing: 10,
    //       children: [
    //         Avatar(size: 30, image: DefaultAvatar),
    //         Expanded(
    //           child: Texts(text: "Sutter"),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
