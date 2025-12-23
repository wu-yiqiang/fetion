import 'package:fetion/db/models/user.model.dart';
import 'package:realm/realm.dart';
import '../realm.dart';
import '../models/user.model.dart';

/// 人员数据仓库类
/// 负责处理人员相关的数据库操作，包括增删查改
class UserRepository {
  final DatabaseManager _databaseManager;
  late final Realm _realm;

  PersonRepository(this._databaseManager) {
    _realm = _databaseManager.realm;
  }

  /// 创建新的人员对象
  User createPerson(String name, int age, {String? email}) {
    // 创建新的人员对象
    final person = User(
      ObjectId().toString(), // 生成唯一ID
      name,
      age,
      email: email,
    );
    
    // 在数据库事务中保存人员对象
    _realm.write(() => _realm.add(person));
    return person;
  }

  /// 为人员添加地址信息
  void addAddress(User person, String street, String city, String country,
      {String? postalCode}) {
    // // 创建新的地址对象
    // final address = Address(
    //   ObjectId().toString(),
    //   street,
    //   city,
    //   country,
    //   postalCode: postalCode,
    // );
    
    // // 在数据库事务中更新人员的地址信息
    // _realm.write(() {
    //   person.addresses = address;
    // });
  }

  /// 获取所有人员对象
  List<User> getAllPersons() {
    return _realm.all<User>().toList();
  }

  /// 根据ID查找人员
  User? getPersonById(String id) {
    return _realm.find<User>(id);
  }

  /// 根据姓名查找人员
  List<User> findPersonsByName(String name) {
    return _realm.query<User>(r'name == "$0"', [name]).toList();
  }

  /// 更新人员信息
  void updatePerson(User user, {String? name, int? age, String? email}) {
    // 在数据库事务中更新人员信息
    _realm.write(() {
      if (name != null) user.name = name;
      if (age != null) user.age = age;
      if (email != null) user.email = email;
    });
  }

  /// 删除人员
  void deletePerson(User user) {
    // 在数据库事务中删除人员
    _realm.write(() {
      _realm.delete(user);
    });
  }
}