import 'package:fetion/pages/desktop/messages/controller/message_controller.dart';
import 'package:fetion/pages/desktop/messages/message.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:fetion/widgets/ScrollViews.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});
  @override
  State<Messages> createState() => _Messages();
}

class _Messages extends State<Messages> {
  late MessageController messageController = Get.find<MessageController>();
  @override
  void initState() {
    super.initState();
    eventBus.emit(Events.SEARCHMESSAGE.name, () {
      print('消息搜索');
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScrollViews(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(4),
        child: GestureDetector(
          onTap: () {},
          child: Column(
            children: messageController.userMessages.value.map((user) {
              return Message();
            }).toList(),
          ),
        ),
      ),
    );
  }
}
