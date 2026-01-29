import 'package:fetion/common/const.dart';
import 'package:fetion/init/init.dart';
import 'package:fetion/navigate/router_table.dart';
import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors, Typography;
import 'package:get/get.dart';
import 'package:local_notifier/local_notifier.dart';
import 'package:fetion/translation/translation.dart';
import 'dart:io' show Platform;

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
TextStyle _getSystemDefaultTextStyle(mode) {
  final color = mode == ThemeModeMap.LIGHT
      ? const Color(0xdd000000)
      : const Color(0xffffffff);
  return TextStyle(
    color: color,
    fontFamilyFallback: [
      'Segoe UI',
      'Inter',
      'SF Pro',
      'Microsoft YaHei',
      'PingFang SC',
      'Noto Sans CJK SC',
      'WenQuanYi Micro Hei',
      'sans-serif',
    ],
  );
}
void main() async {
  await initStart();
  await localNotification();
  ShowGlobalMessages();
  Navigates();
  late SettingController settingController = Get.put(SettingController());
  runApp(
    Obx(() {
      return GetMaterialApp(
        initialRoute: settingController.setting.value.locked ? '/login' : "/",
        getPages: pages,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [FluentLocalizations.delegate],
        locale: Locale(
          settingController.setting.value.languageType,
          settingController.setting.value.languageCountry,
        ),
        fallbackLocale: Locale(
          LanguageEnTypeMap.TYPE,
          LanguageEnTypeMap.COUNTRY,
        ),
        translations: Language(),
        theme: ThemeData(
          brightness: Brightness.light,
          textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: Colors.white),
        ),
        themeMode: settingController.setting.value.theme == ThemeModeMap.DARK
            ? ThemeMode.dark
            : ThemeMode.light,
        builder: (context, child) {
          return AnimatedFluentTheme(
            data: FluentThemeData(
              typography: Typography.raw(
                title: _getSystemDefaultTextStyle(
                  settingController.setting.value.theme,
                ),
                subtitle: _getSystemDefaultTextStyle(
                  settingController.setting.value.theme,
                ),
                caption: _getSystemDefaultTextStyle(
                  settingController.setting.value.theme,
                ),
                body: _getSystemDefaultTextStyle(
                  settingController.setting.value.theme,
                ),
                bodyLarge: _getSystemDefaultTextStyle(
                  settingController.setting.value.theme,
                ),
                bodyStrong: _getSystemDefaultTextStyle(
                  settingController.setting.value.theme,
                ),
                display: _getSystemDefaultTextStyle(
                  settingController.setting.value.theme,
                ),
              ),
              brightness:
                  settingController.setting.value.theme == ThemeModeMap.DARK
                  ? Brightness.dark
                  : Brightness.light,
            ),
            child: child!,
          );
        },
      );
    }),
  );
}
