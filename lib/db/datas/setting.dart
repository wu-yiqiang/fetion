import 'package:fetion/db/models/setting.model.dart';
import 'package:realm/realm.dart';
import '../realmInstance.dart';

class SettingRepository {
  late final RealmInstance _realmInstance;
  late final Realm _realm;

  SettingRepository(this._realmInstance) {
    _realm = _realmInstance.realm;
  }
  Setting getSetting(Setting setting) {
    final settingId = setting?.id;
    final settings = Setting(
      settingId!,
      setting.userId,
      setting.deviceName,
      setting.gateway,
      setting.ipv4,
      setting.ipv6,
      setting.hardwareCode,
      setting.maskCode,
      setting.language,
      setting.languageType,
      setting.languageCountry,
      setting.theme,
      setting.fontSize,
      setting.locked,
      setting.password,
      setting.nickName,
      setting.isDeleted,
      fullName: setting?.fullName ?? '',
      avatar: setting?.avatar ?? '',
      age: setting?.age ?? 0,
      gender: setting?.gender ?? '',
      phone: setting?.phone ?? '',
      email: setting?.email ?? '',
      address: setting?.address ?? '',
      department: setting?.department ?? '',
      position: setting?.position ?? '',
      status: setting?.status ?? true,
      slogan: setting?.slogan ?? '',
      employeeId: setting?.employeeId ?? '',
    );
    return settings;
  }

  Setting? createSetting(Setting setting) {
    final settingId = setting.id;
    final settings = getSetting(setting);
    if (settingId.isNotEmpty) {
      final settingInfo = findSetting(settingId);
      if (settingInfo != null) {
        return settingInfo;
      }
    }
    _realm.write(() => _realm.add(setting));
    return setting;
  }

  void updateSettingItem(String id, String key, dynamic value) {
    _realm.write(() {
      final setting = findSetting(id);
      if (setting != null) {
        if (key == 'language') setting.language = value;
        if (key == 'theme') setting.theme = value;
        if (key == 'languageType') setting.languageType = value;
        if (key == 'languageCountry') setting.languageCountry = value;
        if (key == 'fontSize') setting.fontSize = value;
        if (key == 'locked') setting.locked = value;
        if (key == 'password') setting.password = value;
        if (key == 'nickName') setting.nickName = value;
        if (key == 'fullName') setting.fullName = value;
        if (key == 'age') setting.age = value;
        if (key == 'email') setting.email = value;
        if (key == 'phone') setting.phone = value;
        if (key == 'slogan') setting.slogan = value;
        if (key == 'department') setting.department = value;
        if (key == 'position') setting.position = value;
        if (key == 'age') setting.age = value;
        if (key == 'avatar') setting.avatar = value;
      }
    });
  }

  Setting? findSetting(String id) {
    return _realm.find<Setting>(id);
  }

  void deleteUser(String id) {
    Setting? setting = findSetting(id);
    if (setting == null) return;
    _realm.write(() {
      _realm.delete(setting!);
    });
  }
}
