import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({
    super.key,
    required this.text,
    required this.fontColor,
    required this.backgroundColor,
  });
  final String text;
  final Color fontColor;
  final Color backgroundColor;
  @override
  State<ChatBox> createState() => _ChatBox();
}

class _ChatBox extends State<ChatBox> {
  late SettingController settingController = Get.put(SettingController());
  @override
  Widget build(BuildContext context) {
    String text = widget.text ?? "";
    String newtext = Characters(text).join('\u{200B}');
    return Container(
      // constraints: BoxConstraints(minWidth: 80),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(4),
      ),
      padding: EdgeInsets.all(6),
      child: Flex(
        direction: Axis.vertical,
        spacing: 2,
        children: [
          Obx(() {
            return Text(
              newtext,
              softWrap: true,
              style: TextStyle(
                color: widget.fontColor,
                fontSize: settingController.setting.value.fontSize.toDouble(),
                fontWeight: FontWeight.w400,
                height: 1.5,
                decoration: TextDecoration.none,
              ),
            );
          }),
          // Flex(
          //   direction: Axis.horizontal,
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     Texts(text: widget.timeStamp, fontSize: 10, color: black6),
          //   ],
          // ),
          // Container(
          //   width: 100,
          //   // constraints: BoxConstraints(minWidth: 80),
          //   child: Flex(
          //     direction: Axis.horizontal,
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     children: [
          //       Texts(text: widget.timeStamp, fontSize: 10, color: black6),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
