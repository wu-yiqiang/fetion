import 'package:fetion/common/light-theme.dart';
import 'package:fetion/db/models/message.model.dart';
import 'package:fetion/db/models/user.model.dart';
import 'package:fetion/pages/desktop/contact/controller/contact_controller.dart';
import 'package:fetion/pages/desktop/messages/widges/ChatBox.dart' show ChatBox;
import 'package:fetion/pages/desktop/messages/widges/TimeStamps.dart'
    show TimeStamps;
import 'package:fetion/widgets/Avatar.dart' show Avatar;
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtherChat extends StatefulWidget {
  OtherChat({super.key, required this.item});
  final Message item;
  State<OtherChat> createState() => _OtherChat();
}

class _OtherChat extends State<OtherChat> {
  late UserController userController = Get.put(UserController());
  User? user;
  @override
  Widget build(BuildContext context) {
    user = userController.getUser(widget.item.fromUserId);
    return Flex(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.horizontal,
      spacing: 10,
      children: [
        Avatar(image: user?.avatar, size: 30),
        Expanded(
          flex: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TimeStamps(timeStamp: widget.item.createTime),
              ChatBox(
                text: widget.item.content,
                fontColor: white,
                backgroundColor: primaryColor,
              ),
            ],
          ),
        ),
        Expanded(flex: 2, child: Container(child: null)),
      ],
    );
  }
}
