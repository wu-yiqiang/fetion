import 'package:fetion/db/models/user.model.dart';
import 'package:get/get.dart';
import 'package:realm/realm.dart';
import '../realmInstance.dart';
import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';

class UserRepository {
  late final RealmInstance _realmInstance;
  late final Realm _realm;
  final SettingController settingController = Get.put(SettingController());
  UserRepository(this._realmInstance) {
    _realm = _realmInstance.realm;
  }
  User getUser(User usr) {
    final usrId = usr?.id;
    final user = User(
      usrId ?? ObjectId().toString(),
      usr.nickName,
      usr.isDeleted,
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
    return user;
  }

  User? createUser(User usr) {
    final usrId = usr.id;
    final user = getUser(usr);
    if (usrId.isNotEmpty) {
      final usrInfo = findUser(usrId);
      if (usrInfo != null) {
        return usrInfo;
      }
    }
    _realm.write(() => _realm.add(user));
    return user;
  }

  User? createOwner(User user) {
    deleteUser(user.id);
    return createUser(user);
  }

  List<User> getAllUsers() {
    return _realm.all<User>().toList();
  }

  User? getOwner() {
    final userId = settingController.setting.value.userId;
    return _realm.find<User>(userId);
  }

  List<User> findUserByName(String name) {
    return _realm.query<User>(r'fullName == "$0"', [name]).toList();
  }

  void updateUser(User user) {
    _realm.write(() {
      user = user;
    });
  }

  void updateUserItem(String id, String key, dynamic value) {
    _realm.write(() {
      final user = findUser(id);
      if (user != null) {
        if (key == 'nickName')  user.nickName = value;
        if (key == 'fullName') user.fullName = value;
        if (key == 'age') user.age = value;
        if (key == 'email') user.email = value;
        if (key == 'phone') user.phone = value;
        if (key == 'slogan') user.slogan = value;
        if (key == 'department') user.department = value;
        if (key == 'position') user.position = value;
        if (key == 'age') user.age = value;
        if (key == 'avatar') user.avatar = value;
      }
    });
  }

  User? findUser(String id) {
    return _realm.find<User>(id);
  }

  void deleteUser(String id) {
    User? user = findUser(id);
    if (user == null) return;
    _realm.write(() {
      _realm.delete(user!);
    });
  }
}
