import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/db/models/message.model.dart';
import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';
import 'package:fetion/pages/desktop/messages/widges/ChatBox.dart';
import 'package:fetion/pages/desktop/messages/widges/TimeStamps.dart';
import 'package:fetion/widgets/Avatar.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeChat extends StatefulWidget {
  MeChat({super.key, required this.item});
  final Message item;
  State<MeChat> createState() => _MeChat();
}

class _MeChat extends State<MeChat> {
  late SettingController settingController = Get.put(SettingController());
  @override
  Widget build(BuildContext context) {
    return Flex(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      direction: Axis.horizontal,
      spacing: 10,
      children: [
        Expanded(flex: 2, child: Container(child: null)),
        Expanded(
          flex: 8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TimeStamps(timeStamp: widget.item.createdAt),
              ChatBox(
                text: widget.item.content,
                fontColor: white,
                backgroundColor: primaryColor,
              ),
            ],
          ),
        ),
        Avatar(
          image: settingController.setting.value?.avatar ?? DefaultAvatar,
          size: 34,
        ),
      ],
    );
  }
}
