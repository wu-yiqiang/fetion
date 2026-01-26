import 'package:fetion/pages/desktop/contact/controller/contact_controller.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:get/get.dart';

void DeleteDialog(
  BuildContext context,
  String userId,
  FlyoutController flyoutController,
) async {
  final UserController userController = Get.put(UserController());
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
        text: 'delete'.tr,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      content: Text('confirmDeleteTheContact'.tr),
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
            userController.deleteUser(userId);
            userController.getUserLists();
            if (userId == userController.userId.value) {
              userController.userId.value = '';
            }
            Navigator.pop(context);
            flyoutController.close();
          },
        ),
      ],
    ),
  );
}
