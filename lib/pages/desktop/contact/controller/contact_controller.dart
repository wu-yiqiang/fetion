import 'package:fetion/db/datas/user.dart';
import 'package:fetion/db/models/user.model.dart';
import 'package:get/get.dart';
import 'package:fetion/db/realmInstance.dart';

class UserController extends GetxController {
  late UserRepository _userRepository;
  late RxList<dynamic> users = [].obs;
  RxString userId = "".obs;
  late Rx<User?> user  = User('', '', false).obs;
  initDb() async {
    final realmInstance = await RealmInstance.getInstance();
    _userRepository = UserRepository(realmInstance);
  }

  @override
  void onInit() async {
    super.onInit();
    await initDb();
    getUserLists();
  }

  getUserLists() {
    users.value = _userRepository?.getAllUsers() ?? [];
  }

  getUserInfo(String id) {
    user.value = _userRepository.findUser(id);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
