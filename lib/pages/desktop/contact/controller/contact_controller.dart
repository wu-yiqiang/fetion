import 'package:fetion/db/datas/user.dart';
import 'package:get/get.dart';
import 'package:fetion/db/realmInstance.dart';

class UserController extends GetxController {
  late UserRepository _userRepository;
  late RxList<dynamic> users = [].obs;

  initDb() async {
    final realmInstance = await RealmInstance.getInstance();
    _userRepository = UserRepository(await realmInstance);
  }

  @override
  void onInit() async {
    super.onInit();
    await initDb();
    getUserLists();
  }

  getUserLists() {
    print(_userRepository);
    users.value = _userRepository?.getAllUsers() ?? [];
  }

  @override
  void onClose() {
    super.onClose();
  }
}
