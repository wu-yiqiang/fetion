import 'package:fetion/common/light-theme.dart';
import 'package:fetion/navigate/router_table.dart';
import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';
import 'package:fetion/utils/EventBus.dart';
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
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                  width: 120,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 80, bottom: 20),
                child: Column(spacing: 14, children: [PasswordBox()]),
              ),
              FilledButton(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                  child: WindowsIcon(
                    FluentIcons.unlock,
                    size: 20,
                    color: white,
                  ),
                ),
                onPressed: () {
                  String password = settingController.setting.value.password;
                  if (password != '1234@Abcd') {
                    InfoBar(
                      title: const Text('Title'),
                      content: const Text(
                        'Essential app message for your users to be informed of, '
                        'acknowledge, or take action on.',
                      ),
                      severity: InfoBarSeverity.error,
                    );
                    return;
                  }
                  ;
                  eventBus.emit(Events.NAVIGATE.name, RouterMap.HOME);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
