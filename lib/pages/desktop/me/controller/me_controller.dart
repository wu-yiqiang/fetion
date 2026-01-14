import 'dart:math';
import 'package:fetion/common/const.dart';
import 'package:fetion/db/datas/user.dart';
import 'package:fetion/db/models/user.model.dart';
import 'package:get/get.dart';
import 'package:fetion/db/realmInstance.dart';

class MeController extends GetxController {
  late UserRepository _userRepository;
  late Rx<User> user = User('', '', false, avatar: DefaultAvatar).obs;

  initDb() async {
    final realmInstance = await RealmInstance.getInstance();
    _userRepository = UserRepository(realmInstance);
  }

  @override
  void onInit() async {
    super.onInit();
    await initDb();
    initUser();
  }

  void initUser() async {
    final random = Random();
    late String NumberStr = random.nextInt(100000000).toString();
    final usr = User(
      UserId,
      NickNamePrefix + NumberStr,
      false,
      avatar: DefaultAvatar,
    );
    initMeUser(usr);
  }

  void initMeUser(User usr) {
    final insertUser = _userRepository.createUser(usr);
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
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
