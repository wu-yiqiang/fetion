import 'package:fetion/pages/home/home.dart';
import 'package:get/get.dart';

final routerMap = <String, String>{
  'HOME': '/',
};
final pages = [
  GetPage(name: routerMap['HOME']!, page: () => HomePage()),
];
