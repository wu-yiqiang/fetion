import 'package:fetion/common/const.dart';
import 'package:fetion/db/datas/user.dart';
import 'package:fetion/db/models/user.model.dart';
import 'package:get/get.dart';
import 'package:fetion/db/realmInstance.dart';

class MeController extends GetxController {
  late UserRepository _userRepository;
  final user = User(
    UserId,
    "1212",
    false,
    'A8:41:F4:1C:C2:EA',
    'Itforce05',
    '192.168.1.222',
    'fe80::ff7:db62:8113:635d%18',
    '255.255.255.250'
  ).obs;

  initDb() async {
    final realmInstance = await RealmInstance.getInstance();
    _userRepository = UserRepository(realmInstance);
  }

  @override
  void onReady() async {
    super.onReady();
    await initDb();
    insertMeUser();
  }

  void insertMeUser() {
    final insertUser = _userRepository.createUser(user.value);
    user.value = insertUser!;
  }

  void updateMeUser() {}

  @override
  void onClose() {
    super.onClose();
  }
}
