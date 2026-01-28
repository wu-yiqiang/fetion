import 'package:fetion/db/datas/user.dart';
import 'package:fetion/db/models/user.model.dart';
import 'package:get/get.dart';
import 'package:fetion/db/realmInstance.dart';

class NoticeController extends GetxController {
  late RxList<dynamic> Notices = [].obs;
  
  @override
  void onClose() {
    super.onClose();
  }
}
