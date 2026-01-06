import 'dart:math';
import 'package:fetion/common/const.dart';
import 'package:fetion/db/datas/user.dart';
import 'package:fetion/db/models/user.model.dart';
import 'package:get/get.dart';
import 'package:fetion/db/realmInstance.dart';

class MeController extends GetxController {
  late UserRepository _userRepository;
  Random random = Random();
  late String NumberStr = random.nextInt(100000000).toString();
  late Rx<User> user = User(
    UserId,
    NickNamePrefix + NumberStr,
    '',
    '',
    '',
    '',
    '',
    '',
    false,
  ).obs;

  initDb() async {
    final realmInstance = await RealmInstance.getInstance();
    _userRepository = UserRepository(realmInstance);
  }

  @override
  void onReady() async {
    super.onReady();
    await initDb();
    initMeUser();
  }

  void init() async {}

  void initMeUser() {
    final insertUser = _userRepository.createUser(user.value);
    user.value = insertUser!;
  }

  void updateMeUser(String key, dynamic value) {
    _userRepository.updateUserItem(UserId, key, value);
    getOwnerInfo();
  }

  void getOwnerInfo() {
    final ownerInfos = _userRepository.getOwner();
    user.value = ownerInfos!;
    user.refresh();
  }



  String getLocalMaskCode() {
    return '';
  }

  @override
  void onClose() {
    super.onClose();
  }
}
