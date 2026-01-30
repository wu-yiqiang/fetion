import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';
import 'package:fetion/widgets/Toast.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:get/get.dart';

void updatePasswordModal(BuildContext context) async {
  final SettingController settingController = Get.put(SettingController());
  String oldPassword = '';
  String newPassword = '';
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
        text: 'updatePassword'.tr,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 6,
        children: [
          Text('oldPassword'.tr),
          PasswordBox(
            onChanged: (value) {
              oldPassword = value;
            },
          ),
          Container(height: 10),
          Text('newPassword'.tr),
          PasswordBox(
            onChanged: (value) {
              newPassword = value;
            },
          ),
        ],
      ),
      actions: [
        Button(
          child: Texts(text: 'cancel'.tr, fontSize: 14),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FilledButton(
          child: Texts(text: 'save'.tr, fontSize: 14),
          onPressed: () {
            String password = settingController.setting.value.password;
            if (password != oldPassword) {
              OverlayMessage.show(
                context: context,
                message: 'oldPasswordError'.tr,
                severity: InfoBarSeverity.error,
              );
            } else {
              settingController.updateSetting('password', newPassword);
              Navigator.pop(context);
            }
          },
        ),
      ],
    ),
  );
}
