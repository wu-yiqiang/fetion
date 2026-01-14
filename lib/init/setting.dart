import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';
import 'package:get/get.dart';

initSetting() async {
  final SettingController settingController = Get.put(SettingController());
  settingController.initSetting();
}
