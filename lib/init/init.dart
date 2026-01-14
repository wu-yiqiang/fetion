import 'package:fetion/common/const.dart';
import 'package:fetion/init/setting.dart';
import 'package:fetion/init/user.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'package:fluent_ui/fluent_ui.dart';

windowInit() async {
  WidgetsFlutterBinding.ensureInitialized();
  await windowManager.ensureInitialized();
  WindowOptions windowOptions = const WindowOptions(
    size: Size(900, 600), // 设置默认窗口大小
    minimumSize: Size(800, 600), // 设置最小窗口大小
    center: true, // 设置窗口居中
    title: ApplicationName, // 设置窗口标题
    // backgroundColor: Colors.white,
    // titleBarStyle: TitleBarStyle.hidden, // 隐藏原生标题栏
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });
}

initStart() async {
  await initSetting();
  await initUser();
  await windowInit();
}
