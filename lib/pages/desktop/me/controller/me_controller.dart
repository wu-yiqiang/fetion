import 'dart:math';
import 'package:fetion/common/const.dart';
import 'package:fetion/db/datas/user.dart';
import 'package:fetion/db/models/user.model.dart';
import 'package:get/get.dart';
import 'package:fetion/db/realmInstance.dart';
import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';

class MeController extends GetxController {
  late UserRepository _userRepository;
  late Rx<User> user = User('', '', false, avatar: DefaultAvatar).obs;
  final SettingController settingController = Get.put(SettingController());
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
    final userId = settingController.setting.value.userId;
    final usr = User(
      userId,
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
    final userId = settingController.setting.value.userId;
    _userRepository.updateUserItem(userId, key, value);
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
