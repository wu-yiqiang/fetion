import 'package:fetion/common/light-theme.dart';
import 'package:fetion/navigate/router_table.dart';
import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:fetion/widgets/Avatar.dart';
import 'package:fetion/widgets/Toast.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final SettingController settingController = Get.put(SettingController());
  var showPassword = false;
  String enterPassword = '';
  @override
  Widget build(BuildContext context) {
    return NavigationView(
      content: Center(
        child: Container(
          width: 320,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Avatar(
                  size: 120,
                  image: settingController.setting.value.avatar!,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 80, bottom: 20),
                child: Column(
                  spacing: 14,
                  children: [
                    PasswordBox(
                      onChanged: (String value) {
                        setState(() {
                          enterPassword = value;
                        });
                      },
                      onSubmitted: (String value) {
                        handleLogin();
                      },
                    ),
                  ],
                ),
              ),
              FilledButton(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                  child: Icon(FluentIcons.unlock, size: 20, color: white),
                ),
                onPressed: () {
                  handleLogin();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void handleLogin() {
    String password = settingController.setting.value.password;
    if (password != enterPassword) {
      OverlayMessage.show(
        context: context,
        message: 'passwordError'.tr,
        severity: InfoBarSeverity.error,
      );
    } else {
      settingController.updateSetting('locked', false);
      eventBus.emit(Events.NAVIGATE.name, RouterMap.HOME);
    }
    ;
  }
}
