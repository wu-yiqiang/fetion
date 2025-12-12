import 'package:fetion/navigate/router_table.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'package:get/get.dart';

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

void main() async {
  windowInit();
  eventBus.on(Events.NAVIGATE.name, (ROUTERKEY) {
    Get.toNamed(ROUTERKEY!);
  });
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
