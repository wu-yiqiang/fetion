import 'package:fetion/db/datas/message.dart';
import 'package:get/get.dart';
import 'package:fetion/db/realmInstance.dart';

class MessageController extends GetxController {
  late MessageRepository _messageRepository;
  late RxList<dynamic> messages = [].obs;
  late RxInt pageSize = 20.obs;
  late RxInt pageNo = 1.obs;
  late RxString userId = ''.obs;

  initDb() async {
    final realmInstance = await RealmInstance.getInstance();
    _messageRepository = MessageRepository(realmInstance);
  }

  @override
  void onInit() async {
    super.onInit();
    await initDb();
    getMessagePage();
  }

  getMessagePage() {
    if (_messageRepository == null) return [];
    messages.value =
        _messageRepository?.getMessagesListPage(
          pageSize.value,
          pageNo.value,
          userId.value,
        ) ??
        [];
    print('1212: ${userId.value}');
  }

  @override
  void onClose() {
    super.onClose();
  }
}
