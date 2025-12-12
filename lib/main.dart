import 'package:fetion/navigate/router_table.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'package:get/get.dart';
import 'package:local_notifier/local_notifier.dart';

windowInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  WindowOptions windowOptions = const WindowOptions(
    size: Size(900, 600), // 设置默认窗口大小
    minimumSize: Size(800, 600), // 设置最小窗口大小
    center: true, // 设置窗口居中
    title: "Fetion", // 设置窗口标题
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
}

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
  });
}

void main() async {
  await windowInit();
  await localNotification();
  ShowGlobalMessages();
  Navigates();
  runApp(
    GetMaterialApp(
      initialRoute: "/",
      getPages: pages,
      transitionDuration: Duration(milliseconds: 200),
      // locale: Locale(
      //   storeGetValue(settingStoreKeys['LANGUAGE']!),
      //   storeGetValue(settingStoreKeys['COUNTRY']!),
      // ),
      // translations: Language(),
      // initialBinding: AllControllerBinding(),
      theme: ThemeData(
        fontFamily: "Noto Sans",
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.white),
      ),
      //  builder: EasyLoading.init(),
    ),
  );
}
