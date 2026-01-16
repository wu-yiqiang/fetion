import 'package:realm/realm.dart';
part 'setting.model.realm.dart';

@RealmModel()
class _Setting {
  @PrimaryKey()
  late String id;
  late String userId;
  late String deviceName;
  late String gateway;
  late String ipv4;
  late String ipv6;
  late String hardwareCode;
  late String maskCode;
  late String language;
  late String languageType;
  late String languageCountry;
  late String theme;
  late int fontSize;
  late bool locked;
  late String password;
}
