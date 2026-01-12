import 'dart:math';
import 'package:fetion/common/const.dart';
import 'package:fetion/db/datas/user.dart';
import 'package:fetion/db/models/user.model.dart';
import 'package:fetion/utils/network.dart';
import 'package:get/get.dart';
import 'package:fetion/db/realmInstance.dart';

class MeController extends GetxController {
  late UserRepository _userRepository;
  late Rx<User> user = User(
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    LanguageMap.ENGLISH,
    LanguageEnTypeMap.TYPE,
    LanguageEnTypeMap.COUNTRY,
    ThemeModeMap.LIGHT,
    DefaultFontSize,
    false,
    avatar: DefaultAvatar,
  ).obs;

  initDb() async {
    final realmInstance = await RealmInstance.getInstance();
    _userRepository = UserRepository(realmInstance);
  }

  @override
  void onInit() async {
    super.onReady();
    await initDb();
    initUser();
  }

  void initUser() async {
    final random = Random();
    late String NumberStr = random.nextInt(100000000).toString();
    late String hoatName = getLocalHostName();
    String ipv4 = await getLocalIpv4Addr();
    String ipv6 = await getLocalIpv6Addr();
    String getway = await getLocalGatewayAddr();
    String macAddr = getLocalMacAddr();
    final usr = User(
      UserId,
      NickNamePrefix + NumberStr,
      hoatName,
      getway,
      ipv4,
      ipv6,
      macAddr,
      '255.255.255.250',
      LanguageMap.ENGLISH,
      LanguageEnTypeMap.TYPE,
      LanguageEnTypeMap.COUNTRY,
      ThemeModeMap.LIGHT,
      DefaultFontSize,
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
  }

  String getLocalMaskCode() {
    return '';
  }

  @override
  void onClose() {
    super.onClose();
  }
}
