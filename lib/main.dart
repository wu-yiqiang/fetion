import 'package:fetion/init/init.dart';
import 'package:fetion/navigate/router_table.dart';
import 'package:fetion/pages/desktop/home/home.dart';
import 'package:fetion/pages/login/login.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
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
    Get.toNamed(ROUTERKEY);
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
      // child: FluentApp(
      //   key: Get.key,
      //   initialRoute: "/",
      //   routes: getFluentRoutes(),
      //   // initialBinding: ControllerBindings(),
      //   debugShowCheckedModeBanner: false,
      //   localizationsDelegates: [FluentLocalizations.delegate],
      //   // locale: Locale(
      //   //   storeGetValue(settingStoreKeys['LANGUAGE']!),
      //   //   storeGetValue(settingStoreKeys['COUNTRY']!),
      //   // ),
      //   // translations: Language(),
      //   // initialBinding: AllControllerBinding(),
      //   theme: FluentThemeData(fontFamily: "Noto Sans"),
      //   //  builder: EasyLoading.init(),
      // ),
      child: GetMaterialApp(
        initialRoute: "/",
        getPages: pages,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [FluentLocalizations.delegate],
        theme: ThemeData(fontFamily: "Noto Sans"),
        //  builder: EasyLoading.init(),
      ),
    ),
  );
}
