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
  ) {
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
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
