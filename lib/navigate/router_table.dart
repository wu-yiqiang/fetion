import 'package:fetion/pages/desktop/home/home.dart';
import 'package:fetion/pages/login/Login.dart';
import 'package:get/get.dart';

class RouterMap {
  static const HOME = '/';
  static const LOGIN = '/login';
}

final pages = [
  GetPage(name: RouterMap.HOME, page: () => HomePage()),
  GetPage(name: RouterMap.LOGIN, page: () => LoginPage()),
];
