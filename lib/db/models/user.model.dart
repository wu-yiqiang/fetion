import 'package:realm/realm.dart';
part 'user.model.realm.dart';

@RealmModel()
class _User {
  @PrimaryKey()
  late String id;
  late String nickName;
  @Indexed()
  late bool isDeleted;
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
  String? remarks;
}
