import 'package:fetion/init/init.dart';
import 'package:fetion/navigate/router_table.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:local_notifier/local_notifier.dart';

localNotification() async {
  WidgetsFlutterBinding.ensureInitialized();
  await localNotifier.setup(
    appName: 'Fetion系统通知',
    // 仅 Windows
    shortcutPolicy: ShortcutPolicy.requireCreate,
  );
}

ShowGlobalMessages() {
  eventBus.on(Events.GLOBALMESSAGES.name, (msg) {
    final notification = LocalNotification(identifier: msg, title: msg);
    notification.show();
  });
}

Navigates() {
  eventBus.on(Events.NAVIGATE.name, (ROUTERKEY) {
    Get.toNamed(ROUTERKEY!);
    print("工作$ROUTERKEY");
  });
}

void main() async {
  await initStart();
  await localNotification();
  ShowGlobalMessages();
  Navigates();
  runApp(
    AnimatedFluentTheme(
      data: FluentThemeData.light(),
      child: FluentApp(
        key: Get.key,
        initialRoute: "/",
        routes: getFluentRoutes(),
        // transitionDuration: Duration(milliseconds: 200),
        // initialBinding: ControllerBindings(),
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [FluentLocalizations.delegate],
        // locale: Locale(
        //   storeGetValue(settingStoreKeys['LANGUAGE']!),
        //   storeGetValue(settingStoreKeys['COUNTRY']!),
        // ),
        // translations: Language(),
        // initialBinding: AllControllerBinding(),
        theme: FluentThemeData(
          fontFamily: "Noto Sans",
          // primaryColor: white110,
          // scaffoldBackgroundColor: white110,
          // appBarTheme: AppBarTheme(backgroundColor: Colors.white),
        ),
        //  builder: EasyLoading.init(),
      ),
    ),
  );
}
