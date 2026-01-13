import 'package:fetion/common/light-theme.dart';
import 'package:fetion/navigate/router_table.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:fluent_ui/fluent_ui.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
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
