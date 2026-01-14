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
      setting.deviceName,
      setting.gateway,
      setting.ipv4,
      setting.ipv6,
      setting.macAddr,
      setting.maskCode,
      setting.language,
      setting.langType,
      setting.langCountry,
      setting.theme,
      setting.fontSize,
      setting.locked,
      setting.password
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
        if (key == 'langType') setting.langType = value;
        if (key == 'langCountry') setting.langCountry = value;
        if (key == 'fontSize') setting.fontSize = value;
        if (key == 'locked') setting.locked = value;
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
