import 'package:fetion/pages/desktop/contact/controller/contact_controller.dart';
import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';
import 'package:fetion/pages/desktop/messages/OtherChat.dart';
import 'package:fetion/pages/desktop/messages/MeChat.dart';
import 'package:fetion/pages/desktop/messages/controller/message_controller.dart';
import 'package:fetion/widgets/ScrollViews.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainDialog extends StatefulWidget {
  const MainDialog({super.key});
  @override
  State<MainDialog> createState() => _MainDialog();
}

class _MainDialog extends State<MainDialog> {
  late UserController userController = Get.put(UserController());
  late SettingController settingController = Get.put(SettingController());
  late MessageController messageController = Get.put(MessageController());

  @override
  void initState() {
    super.initState();
    messageController.userId.value = userController.sessionId.value;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ScrollViews(
        child: SingleChildScrollView(
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
