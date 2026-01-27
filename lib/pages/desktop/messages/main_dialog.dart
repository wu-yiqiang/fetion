import 'package:fetion/pages/desktop/contact/controller/contact_controller.dart';
import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';
import 'package:fetion/pages/desktop/messages/OtherChat.dart';
import 'package:fetion/pages/desktop/messages/MeChat.dart';
import 'package:fetion/pages/desktop/messages/controller/message_controller.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:fetion/widgets/ScrollViews.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainDialog extends StatefulWidget {
  final String userId;
  const MainDialog(this.userId, {super.key});
  @override
  State<MainDialog> createState() => _MainDialog();
}

class _MainDialog extends State<MainDialog> {
  late UserController userController = Get.put(UserController());
  late SettingController settingController = Get.put(SettingController());
  late MessageController messageController;
  final controller = ScrollController();
  void scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (controller.hasClients) {
        controller.jumpTo(controller.position.maxScrollExtent);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    messageController = Get.put(MessageController());
    eventBus.on(Events.SCROLLBOTTOM.name, (value) {
      scrollToBottom();
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    messageController.getMessagePage(widget.userId);
    return Container(
      padding: EdgeInsets.all(10),
      child: ScrollViews(
        child: SingleChildScrollView(
          controller: controller,
          child: Obx(() {
            return Column(
              spacing: 10,
              children: messageController.messages!.map((item) {
                return item.fromUserId == settingController.setting.value.userId
                    ? MeChat(item: item)
                    : OtherChat(item: item);
              }).toList(),
            );
          }),
        ),
      ),
    );
  }
}
