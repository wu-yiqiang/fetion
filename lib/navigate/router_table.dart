import 'package:fetion/pages/home/home.dart';
import 'package:fetion/pages/login/Login.dart';
import 'package:get/get.dart';

final routerMap = <String, String>{
  'HOME': '/',
  'LOGIN': '/login'
};
final pages = [
  GetPage(name: routerMap['HOME']!, page: () => HomePage()),
  GetPage(name: routerMap['LOGIN']!, page: () => LoginPage()),
];
