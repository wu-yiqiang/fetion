import 'package:fetion/db/datas/message.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:get/get.dart';
import 'package:fetion/db/realmInstance.dart';
import 'package:fetion/db/models/message.model.dart';

class MessageController extends GetxController {
  MessageRepository? _messageRepository;
  late RxList<dynamic> messages = [].obs;
  late RxInt pageSize = 20.obs;
  late RxInt pageNo = 1.obs;

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
    eventBus.emit(Events.SCROLLBOTTOM.name);
  }

  addMessage(Message message) {
    _messageRepository?.createMessage(message);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
