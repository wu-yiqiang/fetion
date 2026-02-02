import 'dart:async';
import 'package:fetion/db/datas/notice.dart';
import 'package:get/get.dart';
import 'package:fetion/db/realmInstance.dart';

class NoticeController extends GetxController {
  NoticeRepository? _noticeRepository;
  late RxList<dynamic> Notices = [].obs;
  late RxInt unReadNoticeCount = 0.obs;
  StreamSubscription? _changesSubscription;
  initDb() async {
    final realmInstance = await RealmInstance.getInstance();
    _noticeRepository = NoticeRepository(realmInstance);
  }

  @override
  void onInit() async {
    super.onInit();
    await initDb();
    unReadStatic();
  }

  unReadStatic() {
    final unreadResults = _noticeRepository?.queryUnreadNoticeCount();
    _changesSubscription = unreadResults.changes.listen((result) {
      unReadNoticeCount.value = unreadResults?.length ?? 0;
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
