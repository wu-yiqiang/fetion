// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting.model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
class Setting extends _Setting with RealmEntity, RealmObjectBase, RealmObject {
  Setting(
    String id,
    String userId,
    String deviceName,
    String gateway,
    String ipv4,
    String ipv6,
    String hardwareCode,
    String maskCode,
    String language,
    String languageType,
    String languageCountry,
    String theme,
    int fontSize,
    bool locked,
    String password,
    String nickName,
    bool isDeleted, {
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
    RealmObjectBase.set(this, 'userId', userId);
    RealmObjectBase.set(this, 'deviceName', deviceName);
    RealmObjectBase.set(this, 'gateway', gateway);
    RealmObjectBase.set(this, 'ipv4', ipv4);
    RealmObjectBase.set(this, 'ipv6', ipv6);
    RealmObjectBase.set(this, 'hardwareCode', hardwareCode);
    RealmObjectBase.set(this, 'maskCode', maskCode);
    RealmObjectBase.set(this, 'language', language);
    RealmObjectBase.set(this, 'languageType', languageType);
    RealmObjectBase.set(this, 'languageCountry', languageCountry);
    RealmObjectBase.set(this, 'theme', theme);
    RealmObjectBase.set(this, 'fontSize', fontSize);
    RealmObjectBase.set(this, 'locked', locked);
    RealmObjectBase.set(this, 'password', password);
    RealmObjectBase.set(this, 'nickName', nickName);
    RealmObjectBase.set(this, 'isDeleted', isDeleted);
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

  Setting._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get userId => RealmObjectBase.get<String>(this, 'userId') as String;
  @override
  set userId(String value) => RealmObjectBase.set(this, 'userId', value);

  @override
  String get deviceName =>
      RealmObjectBase.get<String>(this, 'deviceName') as String;
  @override
  set deviceName(String value) =>
      RealmObjectBase.set(this, 'deviceName', value);

  @override
  String get gateway => RealmObjectBase.get<String>(this, 'gateway') as String;
  @override
  set gateway(String value) => RealmObjectBase.set(this, 'gateway', value);

  @override
  String get ipv4 => RealmObjectBase.get<String>(this, 'ipv4') as String;
  @override
  set ipv4(String value) => RealmObjectBase.set(this, 'ipv4', value);

  @override
  String get ipv6 => RealmObjectBase.get<String>(this, 'ipv6') as String;
  @override
  set ipv6(String value) => RealmObjectBase.set(this, 'ipv6', value);

  @override
  String get hardwareCode =>
      RealmObjectBase.get<String>(this, 'hardwareCode') as String;
  @override
  set hardwareCode(String value) =>
      RealmObjectBase.set(this, 'hardwareCode', value);

  @override
  String get maskCode =>
      RealmObjectBase.get<String>(this, 'maskCode') as String;
  @override
  set maskCode(String value) => RealmObjectBase.set(this, 'maskCode', value);

  @override
  String get language =>
      RealmObjectBase.get<String>(this, 'language') as String;
  @override
  set language(String value) => RealmObjectBase.set(this, 'language', value);

  @override
  String get languageType =>
      RealmObjectBase.get<String>(this, 'languageType') as String;
  @override
  set languageType(String value) =>
      RealmObjectBase.set(this, 'languageType', value);

  @override
  String get languageCountry =>
      RealmObjectBase.get<String>(this, 'languageCountry') as String;
  @override
  set languageCountry(String value) =>
      RealmObjectBase.set(this, 'languageCountry', value);

  @override
  String get theme => RealmObjectBase.get<String>(this, 'theme') as String;
  @override
  set theme(String value) => RealmObjectBase.set(this, 'theme', value);

  @override
  int get fontSize => RealmObjectBase.get<int>(this, 'fontSize') as int;
  @override
  set fontSize(int value) => RealmObjectBase.set(this, 'fontSize', value);

  @override
  bool get locked => RealmObjectBase.get<bool>(this, 'locked') as bool;
  @override
  set locked(bool value) => RealmObjectBase.set(this, 'locked', value);

  @override
  String get password =>
      RealmObjectBase.get<String>(this, 'password') as String;
  @override
  set password(String value) => RealmObjectBase.set(this, 'password', value);

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
  Stream<RealmObjectChanges<Setting>> get changes =>
      RealmObjectBase.getChanges<Setting>(this);

  @override
  Stream<RealmObjectChanges<Setting>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Setting>(this, keyPaths);

  @override
  Setting freeze() => RealmObjectBase.freezeObject<Setting>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'userId': userId.toEJson(),
      'deviceName': deviceName.toEJson(),
      'gateway': gateway.toEJson(),
      'ipv4': ipv4.toEJson(),
      'ipv6': ipv6.toEJson(),
      'hardwareCode': hardwareCode.toEJson(),
      'maskCode': maskCode.toEJson(),
      'language': language.toEJson(),
      'languageType': languageType.toEJson(),
      'languageCountry': languageCountry.toEJson(),
      'theme': theme.toEJson(),
      'fontSize': fontSize.toEJson(),
      'locked': locked.toEJson(),
      'password': password.toEJson(),
      'nickName': nickName.toEJson(),
      'isDeleted': isDeleted.toEJson(),
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

  static EJsonValue _toEJson(Setting value) => value.toEJson();
  static Setting _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'userId': EJsonValue userId,
        'deviceName': EJsonValue deviceName,
        'gateway': EJsonValue gateway,
        'ipv4': EJsonValue ipv4,
        'ipv6': EJsonValue ipv6,
        'hardwareCode': EJsonValue hardwareCode,
        'maskCode': EJsonValue maskCode,
        'language': EJsonValue language,
        'languageType': EJsonValue languageType,
        'languageCountry': EJsonValue languageCountry,
        'theme': EJsonValue theme,
        'fontSize': EJsonValue fontSize,
        'locked': EJsonValue locked,
        'password': EJsonValue password,
        'nickName': EJsonValue nickName,
        'isDeleted': EJsonValue isDeleted,
      } =>
        Setting(
          fromEJson(id),
          fromEJson(userId),
          fromEJson(deviceName),
          fromEJson(gateway),
          fromEJson(ipv4),
          fromEJson(ipv6),
          fromEJson(hardwareCode),
          fromEJson(maskCode),
          fromEJson(language),
          fromEJson(languageType),
          fromEJson(languageCountry),
          fromEJson(theme),
          fromEJson(fontSize),
          fromEJson(locked),
          fromEJson(password),
          fromEJson(nickName),
          fromEJson(isDeleted),
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
    RealmObjectBase.registerFactory(Setting._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Setting, 'Setting', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('userId', RealmPropertyType.string),
      SchemaProperty('deviceName', RealmPropertyType.string),
      SchemaProperty('gateway', RealmPropertyType.string),
      SchemaProperty('ipv4', RealmPropertyType.string),
      SchemaProperty('ipv6', RealmPropertyType.string),
      SchemaProperty('hardwareCode', RealmPropertyType.string),
      SchemaProperty('maskCode', RealmPropertyType.string),
      SchemaProperty('language', RealmPropertyType.string),
      SchemaProperty('languageType', RealmPropertyType.string),
      SchemaProperty('languageCountry', RealmPropertyType.string),
      SchemaProperty('theme', RealmPropertyType.string),
      SchemaProperty('fontSize', RealmPropertyType.int),
      SchemaProperty('locked', RealmPropertyType.bool),
      SchemaProperty('password', RealmPropertyType.string),
      SchemaProperty('nickName', RealmPropertyType.string),
      SchemaProperty('isDeleted', RealmPropertyType.bool),
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
