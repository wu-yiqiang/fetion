import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/init/init.dart';
import 'package:fetion/navigate/router_table.dart';
import 'package:fetion/pages/desktop/home/home.dart';
import 'package:fetion/pages/desktop/me/controller/me_controller.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:local_notifier/local_notifier.dart';
import 'package:fetion/translation/translation.dart';

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
  late MeController meController = Get.put(MeController());
  print(meController.user.value.langType);
  runApp(
    GetMaterialApp(
      initialRoute: "/",
      getPages: pages,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [FluentLocalizations.delegate],
      locale: Locale(
        meController.user.value.langType,
        meController.user.value.langCountry,
      ),
      fallbackLocale: Locale(LanguageEnTypeMap.TYPE, LanguageEnTypeMap.COUNTRY),
      translations: Language(),
      theme: ThemeData(
        scaffoldBackgroundColor: white110,
        fontFamily: FontFamilyName,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(decoration: TextDecoration.none),
        ),
      ),
      builder: (context, child) {
        return AnimatedFluentTheme(
          data: FluentThemeData(fontFamily: FontFamilyName),
          child: child!,
        );
      },
    ),
  );
}
