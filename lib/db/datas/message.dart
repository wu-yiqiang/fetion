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
    final results = _realm.query<Message>(
      'toUserId == \$0 OR fromUserId == \$0 SORT(createdAt ASC)',
      [userId],
    );
    final start = (pageNo - 1) * pageSize;
    return results.skip(start).take(pageSize).toList();
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

  queryUnreadMessageCount() {
    return _realm.query<Message>('status == \$0 AND isDeleted == false', [
      MsgStatus.unread,
    ]);
  }

  Message? findMessage(String id) {
    return _realm.find<Message>(id);
  }
}
