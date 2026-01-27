import 'package:realm/realm.dart';
part 'message.model.realm.dart';

@RealmModel()
class _Message {
  @PrimaryKey()
  late String id;
  @Indexed()
  late String fromUserId;
  @Indexed()
  late String toUserId;
  @Indexed()
  late bool isDeleted;
  late String content;
  late int msgType; // 0: 文本消息 1: 图片 2:文件
  late int status; // 0:发送中 1:已送达 2:已读 3:测回
  @Indexed()
  late int createTime;
}
