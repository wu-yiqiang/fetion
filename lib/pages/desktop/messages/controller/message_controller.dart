import 'package:fetion/common/const.dart';
import 'package:fetion/db/datas/message.dart';
import 'package:get/get.dart';
import 'package:fetion/db/realmInstance.dart';
import 'package:fetion/db/models/message.model.dart';

class MessageController extends GetxController {
  MessageRepository? _messageRepository;
  late RxList<dynamic> messages = [].obs;
  late RxInt unReadCount = 0.obs;
  late RxInt pageSize = DefaultPageSize.obs;
  late RxInt pageNo = DefaultPageNo.obs;
  initDb() async {
    final realmInstance = await RealmInstance.getInstance();
    _messageRepository = MessageRepository(realmInstance);
  }

  @override
  void onInit() async {
    super.onInit();
    await initDb();
  }

  getMessagePage(String userId) async {
    if (_messageRepository == null && userId.isNotEmpty) return [];
    messages.value =
        await _messageRepository?.getMessagesListPage(
          pageSize.value,
          pageNo.value,
          userId,
        ) ??
        [];
  }

  addMessage(Message message) {
    _messageRepository?.createMessage(message);
  }

  queryUnreadCount() async {
    unReadCount.value =
        await _messageRepository?.queryUnreadMessageCount() ?? 0;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
