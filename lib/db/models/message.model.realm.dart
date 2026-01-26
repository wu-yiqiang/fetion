// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.model.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
class Message extends _Message with RealmEntity, RealmObjectBase, RealmObject {
  Message(
    String id,
    String fromUserId,
    String toUserId,
    bool isDeleted,
    String content,
    int msgType,
    int status,
    String createTime,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'fromUserId', fromUserId);
    RealmObjectBase.set(this, 'toUserId', toUserId);
    RealmObjectBase.set(this, 'isDeleted', isDeleted);
    RealmObjectBase.set(this, 'content', content);
    RealmObjectBase.set(this, 'msgType', msgType);
    RealmObjectBase.set(this, 'status', status);
    RealmObjectBase.set(this, 'createTime', createTime);
  }

  Message._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get fromUserId =>
      RealmObjectBase.get<String>(this, 'fromUserId') as String;
  @override
  set fromUserId(String value) =>
      RealmObjectBase.set(this, 'fromUserId', value);

  @override
  String get toUserId =>
      RealmObjectBase.get<String>(this, 'toUserId') as String;
  @override
  set toUserId(String value) => RealmObjectBase.set(this, 'toUserId', value);

  @override
  bool get isDeleted => RealmObjectBase.get<bool>(this, 'isDeleted') as bool;
  @override
  set isDeleted(bool value) => RealmObjectBase.set(this, 'isDeleted', value);

  @override
  String get content => RealmObjectBase.get<String>(this, 'content') as String;
  @override
  set content(String value) => RealmObjectBase.set(this, 'content', value);

  @override
  int get msgType => RealmObjectBase.get<int>(this, 'msgType') as int;
  @override
  set msgType(int value) => RealmObjectBase.set(this, 'msgType', value);

  @override
  int get status => RealmObjectBase.get<int>(this, 'status') as int;
  @override
  set status(int value) => RealmObjectBase.set(this, 'status', value);

  @override
  String get createTime =>
      RealmObjectBase.get<String>(this, 'createTime') as String;
  @override
  set createTime(String value) =>
      RealmObjectBase.set(this, 'createTime', value);

  @override
  Stream<RealmObjectChanges<Message>> get changes =>
      RealmObjectBase.getChanges<Message>(this);

  @override
  Stream<RealmObjectChanges<Message>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Message>(this, keyPaths);

  @override
  Message freeze() => RealmObjectBase.freezeObject<Message>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'fromUserId': fromUserId.toEJson(),
      'toUserId': toUserId.toEJson(),
      'isDeleted': isDeleted.toEJson(),
      'content': content.toEJson(),
      'msgType': msgType.toEJson(),
      'status': status.toEJson(),
      'createTime': createTime.toEJson(),
    };
  }

  static EJsonValue _toEJson(Message value) => value.toEJson();
  static Message _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'fromUserId': EJsonValue fromUserId,
        'toUserId': EJsonValue toUserId,
        'isDeleted': EJsonValue isDeleted,
        'content': EJsonValue content,
        'msgType': EJsonValue msgType,
        'status': EJsonValue status,
        'createTime': EJsonValue createTime,
      } =>
        Message(
          fromEJson(id),
          fromEJson(fromUserId),
          fromEJson(toUserId),
          fromEJson(isDeleted),
          fromEJson(content),
          fromEJson(msgType),
          fromEJson(status),
          fromEJson(createTime),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Message._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, Message, 'Message', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('fromUserId', RealmPropertyType.string),
      SchemaProperty('toUserId', RealmPropertyType.string),
      SchemaProperty('isDeleted', RealmPropertyType.bool),
      SchemaProperty('content', RealmPropertyType.string),
      SchemaProperty('msgType', RealmPropertyType.int),
      SchemaProperty('status', RealmPropertyType.int),
      SchemaProperty('createTime', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
