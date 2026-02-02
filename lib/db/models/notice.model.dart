import 'package:realm/realm.dart';
part 'notice.model.realm.dart';

@RealmModel()
class _Notice {
  @PrimaryKey()
  late String id;
  @Indexed()
  late String fromUserId;
  @Indexed()
  late String toUserId;
  late String content;
  late int noticeType; // 0:添加联系人 1: 邀请加入组
  late int status; // 0:未读 1:已读 2:清除
  @Indexed()
  late bool isDeleted = false;
  late int createdAt;
  late int updatedAt;
}
