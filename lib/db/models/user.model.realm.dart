// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
class User extends _User with RealmEntity, RealmObjectBase, RealmObject {
  User(
    String id,
    String nickName,
    bool isDeleted,
    String macAddr,
    String deviceName,
    String ipv4Addr,
    String ipv6Addr,
    String maskCode, {
    String? fullName,
    String? avatar,
    int? age,
    String? gender,
    String? phone,
    String? email,
    String? address,
    String? department,
    String? position,
    bool? status,
    String? slogan,
    String? employeeId,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'nickName', nickName);
    RealmObjectBase.set(this, 'isDeleted', isDeleted);
    RealmObjectBase.set(this, 'macAddr', macAddr);
    RealmObjectBase.set(this, 'deviceName', deviceName);
    RealmObjectBase.set(this, 'ipv4Addr', ipv4Addr);
    RealmObjectBase.set(this, 'ipv6Addr', ipv6Addr);
    RealmObjectBase.set(this, 'maskCode', maskCode);
    RealmObjectBase.set(this, 'fullName', fullName);
    RealmObjectBase.set(this, 'avatar', avatar);
    RealmObjectBase.set(this, 'age', age);
    RealmObjectBase.set(this, 'gender', gender);
    RealmObjectBase.set(this, 'phone', phone);
    RealmObjectBase.set(this, 'email', email);
    RealmObjectBase.set(this, 'address', address);
    RealmObjectBase.set(this, 'department', department);
    RealmObjectBase.set(this, 'position', position);
    RealmObjectBase.set(this, 'status', status);
    RealmObjectBase.set(this, 'slogan', slogan);
    RealmObjectBase.set(this, 'employeeId', employeeId);
  }

  User._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get nickName =>
      RealmObjectBase.get<String>(this, 'nickName') as String;
  @override
  set nickName(String value) => RealmObjectBase.set(this, 'nickName', value);

  @override
  bool get isDeleted => RealmObjectBase.get<bool>(this, 'isDeleted') as bool;
  @override
  set isDeleted(bool value) => RealmObjectBase.set(this, 'isDeleted', value);

  @override
  String get macAddr => RealmObjectBase.get<String>(this, 'macAddr') as String;
  @override
  set macAddr(String value) => RealmObjectBase.set(this, 'macAddr', value);

  @override
  String get deviceName =>
      RealmObjectBase.get<String>(this, 'deviceName') as String;
  @override
  set deviceName(String value) =>
      RealmObjectBase.set(this, 'deviceName', value);

  @override
  String get ipv4Addr =>
      RealmObjectBase.get<String>(this, 'ipv4Addr') as String;
  @override
  set ipv4Addr(String value) => RealmObjectBase.set(this, 'ipv4Addr', value);

  @override
  String get ipv6Addr =>
      RealmObjectBase.get<String>(this, 'ipv6Addr') as String;
  @override
  set ipv6Addr(String value) => RealmObjectBase.set(this, 'ipv6Addr', value);

  @override
  String get maskCode =>
      RealmObjectBase.get<String>(this, 'maskCode') as String;
  @override
  set maskCode(String value) => RealmObjectBase.set(this, 'maskCode', value);

  @override
  String? get fullName =>
      RealmObjectBase.get<String>(this, 'fullName') as String?;
  @override
  set fullName(String? value) => RealmObjectBase.set(this, 'fullName', value);

  @override
  String? get avatar => RealmObjectBase.get<String>(this, 'avatar') as String?;
  @override
  set avatar(String? value) => RealmObjectBase.set(this, 'avatar', value);

  @override
  int? get age => RealmObjectBase.get<int>(this, 'age') as int?;
  @override
  set age(int? value) => RealmObjectBase.set(this, 'age', value);

  @override
  String? get gender => RealmObjectBase.get<String>(this, 'gender') as String?;
  @override
  set gender(String? value) => RealmObjectBase.set(this, 'gender', value);

  @override
  String? get phone => RealmObjectBase.get<String>(this, 'phone') as String?;
  @override
  set phone(String? value) => RealmObjectBase.set(this, 'phone', value);

  @override
  String? get email => RealmObjectBase.get<String>(this, 'email') as String?;
  @override
  set email(String? value) => RealmObjectBase.set(this, 'email', value);

  @override
  String? get address =>
      RealmObjectBase.get<String>(this, 'address') as String?;
  @override
  set address(String? value) => RealmObjectBase.set(this, 'address', value);

  @override
  String? get department =>
      RealmObjectBase.get<String>(this, 'department') as String?;
  @override
  set department(String? value) =>
      RealmObjectBase.set(this, 'department', value);

  @override
  String? get position =>
      RealmObjectBase.get<String>(this, 'position') as String?;
  @override
  set position(String? value) => RealmObjectBase.set(this, 'position', value);

  @override
  bool? get status => RealmObjectBase.get<bool>(this, 'status') as bool?;
  @override
  set status(bool? value) => RealmObjectBase.set(this, 'status', value);

  @override
  String? get slogan => RealmObjectBase.get<String>(this, 'slogan') as String?;
  @override
  set slogan(String? value) => RealmObjectBase.set(this, 'slogan', value);

  @override
  String? get employeeId =>
      RealmObjectBase.get<String>(this, 'employeeId') as String?;
  @override
  set employeeId(String? value) =>
      RealmObjectBase.set(this, 'employeeId', value);

  @override
  Stream<RealmObjectChanges<User>> get changes =>
      RealmObjectBase.getChanges<User>(this);

  @override
  Stream<RealmObjectChanges<User>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<User>(this, keyPaths);

  @override
  User freeze() => RealmObjectBase.freezeObject<User>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'nickName': nickName.toEJson(),
      'isDeleted': isDeleted.toEJson(),
      'macAddr': macAddr.toEJson(),
      'deviceName': deviceName.toEJson(),
      'ipv4Addr': ipv4Addr.toEJson(),
      'ipv6Addr': ipv6Addr.toEJson(),
      'maskCode': maskCode.toEJson(),
      'fullName': fullName.toEJson(),
      'avatar': avatar.toEJson(),
      'age': age.toEJson(),
      'gender': gender.toEJson(),
      'phone': phone.toEJson(),
      'email': email.toEJson(),
      'address': address.toEJson(),
      'department': department.toEJson(),
      'position': position.toEJson(),
      'status': status.toEJson(),
      'slogan': slogan.toEJson(),
      'employeeId': employeeId.toEJson(),
    };
  }

  static EJsonValue _toEJson(User value) => value.toEJson();
  static User _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'nickName': EJsonValue nickName,
        'isDeleted': EJsonValue isDeleted,
        'macAddr': EJsonValue macAddr,
        'deviceName': EJsonValue deviceName,
        'ipv4Addr': EJsonValue ipv4Addr,
        'ipv6Addr': EJsonValue ipv6Addr,
        'maskCode': EJsonValue maskCode,
      } =>
        User(
          fromEJson(id),
          fromEJson(nickName),
          fromEJson(isDeleted),
          fromEJson(macAddr),
          fromEJson(deviceName),
          fromEJson(ipv4Addr),
          fromEJson(ipv6Addr),
          fromEJson(maskCode),
          fullName: fromEJson(ejson['fullName']),
          avatar: fromEJson(ejson['avatar']),
          age: fromEJson(ejson['age']),
          gender: fromEJson(ejson['gender']),
          phone: fromEJson(ejson['phone']),
          email: fromEJson(ejson['email']),
          address: fromEJson(ejson['address']),
          department: fromEJson(ejson['department']),
          position: fromEJson(ejson['position']),
          status: fromEJson(ejson['status']),
          slogan: fromEJson(ejson['slogan']),
          employeeId: fromEJson(ejson['employeeId']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(User._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, User, 'User', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('nickName', RealmPropertyType.string),
      SchemaProperty('isDeleted', RealmPropertyType.bool),
      SchemaProperty('macAddr', RealmPropertyType.string),
      SchemaProperty('deviceName', RealmPropertyType.string),
      SchemaProperty('ipv4Addr', RealmPropertyType.string),
      SchemaProperty('ipv6Addr', RealmPropertyType.string),
      SchemaProperty('maskCode', RealmPropertyType.string),
      SchemaProperty('fullName', RealmPropertyType.string, optional: true),
      SchemaProperty('avatar', RealmPropertyType.string, optional: true),
      SchemaProperty('age', RealmPropertyType.int, optional: true),
      SchemaProperty('gender', RealmPropertyType.string, optional: true),
      SchemaProperty('phone', RealmPropertyType.string, optional: true),
      SchemaProperty('email', RealmPropertyType.string, optional: true),
      SchemaProperty('address', RealmPropertyType.string, optional: true),
      SchemaProperty('department', RealmPropertyType.string, optional: true),
      SchemaProperty('position', RealmPropertyType.string, optional: true),
      SchemaProperty('status', RealmPropertyType.bool, optional: true),
      SchemaProperty('slogan', RealmPropertyType.string, optional: true),
      SchemaProperty('employeeId', RealmPropertyType.string, optional: true),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;

}
