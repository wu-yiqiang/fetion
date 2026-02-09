import 'dart:math';
import 'package:fetion/common/const.dart';
import 'package:fetion/db/datas/setting.dart';
import 'package:fetion/db/models/setting.model.dart';
import 'package:fetion/utils/network.dart';
import 'package:fetion/utils/utils.dart';
import 'package:get/get.dart';
import 'package:fetion/db/realmInstance.dart';

class SettingController extends GetxController {
  late SettingRepository _settingRepository;
  final random = Random();
  late Rx<Setting> setting = Setting(
    settingId,
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
    defaultFontSize,
    false,
    defaultPassword,
    '',
    avatar: defaultAvatar,
    DateTime.now().millisecondsSinceEpoch,
    DateTime.now().millisecondsSinceEpoch,
  ).obs;

  initDb() async {
    final realmInstance = await RealmInstance.getInstance();
    _settingRepository = SettingRepository(realmInstance);
  }

  @override
  void onInit() async {
    super.onInit();
    await initDb();
    initSetting();
  }

  void initSetting() async {
    final random = Random();
    late String NumberStr = random.nextInt(100000000).toString();
    late String hoatName = getLocalHostName();
    String ipv4 = await getLocalIpv4Addr();
    String ipv6 = await getLocalIpv6Addr();
    String getway = await getLocalGatewayAddr();
    String macAddr = getLocalMacAddr();
    String userId = generateRandomString(30);
    final setting = Setting(
      settingId,
      userId,
      hoatName,
      getway,
      ipv4,
      ipv6,
      macAddr,
      defaultMaskCode,
      LanguageMap.ENGLISH,
      LanguageEnTypeMap.TYPE,
      LanguageEnTypeMap.COUNTRY,
      ThemeModeMap.LIGHT,
      defaultFontSize,
      false,
      defaultPassword,
      nickNamePrefix + NumberStr,
      avatar: defaultAvatar,
      DateTime.now().millisecondsSinceEpoch,
      DateTime.now().millisecondsSinceEpoch,
    );
    initSettings(setting);
  }

  void initSettings(Setting settings) {
    final insertSetting = _settingRepository.createSetting(settings);
    setting.value = insertSetting!;
  }

  void updateSetting(String key, dynamic value) {
    _settingRepository.updateSettingItem(settingId, key, value);
    getSettingInfo();
  }

  void getSettingInfo() {
    final ownerInfos = _settingRepository.findSetting(settingId);
    setting.value = ownerInfos!;
    setting.refresh();
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
