import 'package:fetion/pages/desktop/me/controller/me_controller.dart';
import 'package:get/get.dart';

initUser() async {
  final MeController meController = Get.put(MeController());
  meController.initUser();
}
