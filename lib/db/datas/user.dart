import 'package:fetion/common/const.dart';
import 'package:fetion/db/models/user.model.dart';
import 'package:realm/realm.dart';
import '../realmInstance.dart';
import '../models/user.model.dart';

class UserRepository {
  late final RealmInstance _realmInstance;
  late final Realm _realm;

  UserRepository(this._realmInstance) {
    _realm = _realmInstance.realm;
  }

  User? createUser(User usr) {
    final usrId = usr.id;
    final user = User(
      usrId ?? ObjectId().toString(),
      usr.nickName,
      usr.isDeleted,
      usr.macAddr,
      usr.deviceName,
      usr.ipv4Addr,
      usr.ipv6Addr,
      usr.maskCode,
      fullName: usr?.fullName ?? '',
      avatar: usr?.avatar ?? '',
      age: usr?.age ?? 0,
      gender: usr?.gender ?? '',
      phone: usr?.phone ?? '',
      email: usr?.email ?? '',
      address: usr?.address ?? '',
      department: usr?.department ?? '',
      position: usr?.position ?? '',
      status: usr?.status ?? true,
      slogan: usr?.slogan ?? '',
      employeeId: usr?.employeeId ?? '',
    );
    if (usrId.isNotEmpty) {
      final usrInfo = getUserById(usrId);
      if (usrInfo != null) {
        return usrInfo;
      }
    }
    // 在数据库事务中保存人员对象
    _realm.write(() => _realm.add(user));
    return user;
  }

  /// 为人员添加地址信息
  void addAddress(
    User user,
    String street,
    String city,
    String country, {
    String? postalCode,
  }) {
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
    //   user.addresses = address;
    // });
  }

  /// 获取所有人员对象
  List<User> getAllUsers() {
    return _realm.all<User>().toList();
  }

  User? getUserById(String id) {
    return _realm.find<User>(id);
  }

  User? getOwner() {
    return _realm.find<User>(UserId);
  }

  List<User> findUserByName(String name) {
    return _realm.query<User>(r'fullName == "$0"', [name]).toList();
  }

  void updateUser(User user, {String? name, int? age, String? email}) {
    // _realm.write(() {
    //   if (name != null) user.name = name;
    //   if (age != null) user.age = age;
    //   if (email != null) user.email = email;
    // });
  }

  /// 删除人员
  void deleteUser(User user) {
    // 在数据库事务中删除人员
    _realm.write(() {
      _realm.delete(user);
    });
  }
}
