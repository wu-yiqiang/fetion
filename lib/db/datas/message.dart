import 'package:fetion/common/const.dart';
import 'package:fetion/db/models/message.model.dart';
import 'package:realm/realm.dart';
import '../realmInstance.dart';

class MessageRepository {
  late final RealmInstance _realmInstance;
  late final Realm _realm;

  MessageRepository(this._realmInstance) {
    _realm = _realmInstance.realm;
  }

  List<Message> getMessagesListPage(int pageSize, int pageNo, String userId) {
    return _realm
        .all<Message>()
        .where((u) => u.toUserId == userId || u.fromUserId == userId)
        .toList();
  }

  void updateMessageItem(String id, String key, dynamic value) {
    _realm.write(() {
      final message = findMessage(id);
      if (message != null) {
        if (key == 'status') message.status = value;
      }
    });
  }
  Message createMessage(Message message) {
    _realm.write(() => _realm.add(message));
    return message;
  }

  int queryUnreadMessageCount() {
    return _realm.all<Message>().where((u) => u.status == MsgStatus.UNREAD)?.length ?? 0;
  }

  Message? findMessage(String id) {
    return _realm.find<Message>(id);
  }
}
