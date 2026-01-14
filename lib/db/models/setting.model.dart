import 'package:realm/realm.dart';
part 'setting.model.realm.dart';

@RealmModel()
class _Setting {
  @PrimaryKey()
  late String id;
  late String deviceName;
  late String gateway;
  late String ipv4;
  late String ipv6;
  late String macAddr;
  late String maskCode;
  late String language;
  late String langType;
  late String langCountry;
  late String theme;
  late int fontSize;
}
