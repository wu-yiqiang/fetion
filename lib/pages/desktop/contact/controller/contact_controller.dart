import 'package:fetion/db/datas/user.dart';
import 'package:fetion/db/models/user.model.dart';
import 'package:get/get.dart';
import 'package:fetion/db/realmInstance.dart';

class UserController extends GetxController {
  late UserRepository _userRepository;
  late RxList<dynamic> users = [].obs;
  RxString userId = "".obs;
  RxString sessionId = "".obs;
  late Rx<User?> user = User('', '', DateTime.now().millisecondsSinceEpoch, DateTime.now().millisecondsSinceEpoch ).obs;
  late Rx<User?> session = User('', '', DateTime.now().millisecondsSinceEpoch, DateTime.now().millisecondsSinceEpoch,
  ).obs;
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
    if (_userRepository == null) return [];
    users.value = _userRepository?.getAllActivedUsers() ?? [];
  }

  getUserInfo(String id) {
    user.value = _userRepository.findUser(id);
  }

  getUser(String id) {
    return _userRepository.findUser(id);
  }

  getSessionInfo(String id) {
    session.value = _userRepository.findUser(id);
  }

  renameUser(String userId, String value) {
    _userRepository.updateUserItem(userId, 'remarks', value);
  }

  deleteUser(String id) {
    _userRepository.softDeleteUser(id);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
