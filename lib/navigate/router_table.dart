import 'package:fetion/pages/desktop/home/home.dart';
import 'package:fetion/pages/login/Login.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

class RouterMap {
  static const HOME = '/';
  static const LOGIN = '/login';
}

final pages = [
  GetPage(name: RouterMap.HOME, page: () => HomePage()),
  GetPage(name: RouterMap.LOGIN, page: () => LoginPage()),
];


Map<String, WidgetBuilder> getFluentRoutes() {
  return {
    for (var page in pages)
      page.name: (context) {
        return page.page();
      },
  };
}
