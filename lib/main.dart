import 'package:fetion/navigate/router_table.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
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
      // theme: ThemeData(
      //   primaryColor: whiteColor,
      //   scaffoldBackgroundColor: greyColor,
      //   appBarTheme: AppBarTheme(color: greyColor),
      // ),
      //  builder: EasyLoading.init(),
    ),
  );
}

