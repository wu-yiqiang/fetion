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
    String deviceName,
    String gateway,
    String ipv4,
    String ipv6,
    String macAddr,
    String maskCode,
    String language,
    String langType,
    String langCountry,
    String theme,
    int fontSize,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'deviceName', deviceName);
    RealmObjectBase.set(this, 'gateway', gateway);
    RealmObjectBase.set(this, 'ipv4', ipv4);
    RealmObjectBase.set(this, 'ipv6', ipv6);
    RealmObjectBase.set(this, 'macAddr', macAddr);
    RealmObjectBase.set(this, 'maskCode', maskCode);
    RealmObjectBase.set(this, 'language', language);
    RealmObjectBase.set(this, 'langType', langType);
    RealmObjectBase.set(this, 'langCountry', langCountry);
    RealmObjectBase.set(this, 'theme', theme);
    RealmObjectBase.set(this, 'fontSize', fontSize);
  }

  Setting._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

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
  String get macAddr => RealmObjectBase.get<String>(this, 'macAddr') as String;
  @override
  set macAddr(String value) => RealmObjectBase.set(this, 'macAddr', value);

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
  String get langType =>
      RealmObjectBase.get<String>(this, 'langType') as String;
  @override
  set langType(String value) => RealmObjectBase.set(this, 'langType', value);

  @override
  String get langCountry =>
      RealmObjectBase.get<String>(this, 'langCountry') as String;
  @override
  set langCountry(String value) =>
      RealmObjectBase.set(this, 'langCountry', value);

  @override
  String get theme => RealmObjectBase.get<String>(this, 'theme') as String;
  @override
  set theme(String value) => RealmObjectBase.set(this, 'theme', value);

  @override
  int get fontSize => RealmObjectBase.get<int>(this, 'fontSize') as int;
  @override
  set fontSize(int value) => RealmObjectBase.set(this, 'fontSize', value);

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
      'deviceName': deviceName.toEJson(),
      'gateway': gateway.toEJson(),
      'ipv4': ipv4.toEJson(),
      'ipv6': ipv6.toEJson(),
      'macAddr': macAddr.toEJson(),
      'maskCode': maskCode.toEJson(),
      'language': language.toEJson(),
      'langType': langType.toEJson(),
      'langCountry': langCountry.toEJson(),
      'theme': theme.toEJson(),
      'fontSize': fontSize.toEJson(),
    };
  }

  static EJsonValue _toEJson(Setting value) => value.toEJson();
  static Setting _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'deviceName': EJsonValue deviceName,
        'gateway': EJsonValue gateway,
        'ipv4': EJsonValue ipv4,
        'ipv6': EJsonValue ipv6,
        'macAddr': EJsonValue macAddr,
        'maskCode': EJsonValue maskCode,
        'language': EJsonValue language,
        'langType': EJsonValue langType,
        'langCountry': EJsonValue langCountry,
        'theme': EJsonValue theme,
        'fontSize': EJsonValue fontSize,
      } =>
        Setting(
          fromEJson(id),
          fromEJson(deviceName),
          fromEJson(gateway),
          fromEJson(ipv4),
          fromEJson(ipv6),
          fromEJson(macAddr),
          fromEJson(maskCode),
          fromEJson(language),
          fromEJson(langType),
          fromEJson(langCountry),
          fromEJson(theme),
          fromEJson(fontSize),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Setting._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Setting, 'Setting', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('deviceName', RealmPropertyType.string),
      SchemaProperty('gateway', RealmPropertyType.string),
      SchemaProperty('ipv4', RealmPropertyType.string),
      SchemaProperty('ipv6', RealmPropertyType.string),
      SchemaProperty('macAddr', RealmPropertyType.string),
      SchemaProperty('maskCode', RealmPropertyType.string),
      SchemaProperty('language', RealmPropertyType.string),
      SchemaProperty('langType', RealmPropertyType.string),
      SchemaProperty('langCountry', RealmPropertyType.string),
      SchemaProperty('theme', RealmPropertyType.string),
      SchemaProperty('fontSize', RealmPropertyType.int),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
