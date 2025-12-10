import 'package:fetion/navigate/router_table.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'package:get/get.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await windowManager.ensureInitialized();

  // WindowOptions windowOptions = WindowOptions(
  //   size: Size(800, 600),
  //   center: true,
  //   backgroundColor: Colors.transparent,
  //   skipTaskbar: false,
  //   titleBarStyle: TitleBarStyle.hidden,
  // );
  // windowManager.waitUntilReadyToShow(windowOptions, () async {
  //   await windowManager.show();
  //   await windowManager.focus();
  // });
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
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.white),
      ),
      //  builder: EasyLoading.init(),
    ),
  );
}
