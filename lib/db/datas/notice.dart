import 'package:fetion/common/const.dart';
import 'package:fetion/db/models/notice.model.dart';
import 'package:realm/realm.dart';
import '../realmInstance.dart';

class NoticeRepository {
  late final RealmInstance _realmInstance;
  late final Realm _realm;

  NoticeRepository(this._realmInstance) {
    _realm = _realmInstance.realm;
  }

  queryUnreadNotice() {
    return _realm.query<Notice>('status == ${NoticeStatus.UNREAD}');
  }

  queryUnreadNotices() {
    return queryUnreadNotice().toList();
  }
  Notice? findNotice(String noticeId) {
    return _realm.find<Notice>(noticeId);
  }

  deleteNotice(String noticeId) {
    Notice? notice = findNotice(noticeId);
    if (notice == null) return;
    _realm.write(() {
      _realm.delete(notice!);
    });
  }
}
