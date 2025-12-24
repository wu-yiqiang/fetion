import 'package:realm/realm.dart';
part 'user.model.realm.dart';

@RealmModel()
class _User {
  @PrimaryKey()
  late String id;
  late String nickName;
  late bool isMe;
  late bool isDeleted;
  late String macAddr;
  late String deviceName;
  late String hardwareAddr;
  late String ipv4Addr;
  late String ipv6Addr;
  late String maskCode;
  String? fullName;
  String? avatar;
  int? age;
  String? gender;
  String? phone;
  String? email;
  String? address;
  String? department;
  String? position;
  bool? status;
  String? slogan;
  String? employeeId;
}
