import 'package:realm/realm.dart';
part 'user.realm.dart';

/// 人员模型类
/// 使用 @RealmModel() 注解标记为 Realm 数据模型
@RealmModel()
class _User {
  @PrimaryKey()
  late String id;
  late String name;
  late int age;
  String? email;
}