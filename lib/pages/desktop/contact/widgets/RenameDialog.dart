import 'package:fetion/pages/desktop/contact/controller/contact_controller.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:get/get.dart';

void RenameDialog(
  BuildContext context,
  String? text,
  String userId,
  FlyoutController flyoutController,
) async {
  final UserController userController = Get.put(UserController());
  final TextEditingController textController = TextEditingController(
    text: text,
  );
  final result = await showDialog<String>(
    context: context,
    builder: (context) => ContentDialog(
      style: ContentDialogThemeData(
        decoration: BoxDecoration(
          color: FluentTheme.of(context).menuColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: kElevationToShadow[6],
        ),
        actionsDecoration: BoxDecoration(
          color: FluentTheme.of(context).micaBackgroundColor,
          borderRadius: const BorderRadius.vertical(bottom: Radius.circular(6)),
        ),
      ),
      title: Texts(
        text: 'rename'.tr,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      content: Container(
        child: TextBox(controller: textController, maxLength: 50),
        height: 34,
      ),
      actions: [
        Button(
          child: Texts(text: 'cancel'.tr, fontSize: 14),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FilledButton(
          child: Texts(text: 'confirm'.tr, fontSize: 14),
          onPressed: () {
            userController.renameUser(userId, textController.text);
            userController.getUserLists();
            Navigator.pop(context);
            flyoutController.close();
          },
        ),
      ],
    ),
  );
}
