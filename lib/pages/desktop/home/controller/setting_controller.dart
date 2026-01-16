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
  late Rx<Setting> setting = Setting(
    SettingId,
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
    DefaultPassword,
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
      SettingId,
      userId,
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
      DefaultPassword,
    );
    initSettings(setting);
  }

  void initSettings(Setting settings) {
    final insertSetting = _settingRepository.createSetting(settings);
    setting.value = insertSetting!;
  }

  void updateSetting(String key, dynamic value) {
    _settingRepository.updateSettingItem(SettingId, key, value);
    getSettingInfo();
  }

  void getSettingInfo() {
    final ownerInfos = _settingRepository.findSetting(SettingId);
    setting.value = ownerInfos!;
    setting.refresh();
    update();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
