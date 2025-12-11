import 'package:fetion/common/const.dart';
import 'package:fetion/pages/messages/desktop/AIChat.dart' show AiChat;
import 'package:fetion/pages/messages/desktop/MeChat.dart' show MeChat;
import 'package:flutter/material.dart';

enum ChatType { ME, AI }

class MainDialog extends StatefulWidget {
  const MainDialog({super.key});
  @override
  State<MainDialog> createState() => _MainDialog();
}

class _MainDialog extends State<MainDialog> {
  List answerList = [
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "Hello",
      'time': '2025-08-12 08:01:01',
    },
    {
      'avatar': 'assets/images/avatar.jpeg',
      'type': 1,
      'text': "你好",
      'time': '2025-08-12 08:01:14',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "你是谁",
      'time': '2025-08-12 08:02:34',
    },
    {
      'avatar': 'assets/images/avatar.jpeg',
      'type': 1,
      'text': "我是您的人工智能客服，可以为您解答软件使用方面相关问题",
      'time': '2025-08-12 08:02:40',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "今天天气",
      'time': '2025-08-12 10:01:22',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "今天天气",
      'time': '2025-08-12 10:01:22',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "今天天气",
      'time': '2025-08-12 10:01:22',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "今天天气",
      'time': '2025-08-12 10:01:22',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "今天天气",
      'time': '2025-08-12 10:01:22',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "今天天气",
      'time': '2025-08-12 10:01:22',
    },
    {
      'avatar': 'assets/images/user.jpg',
      'type': 0,
      'text': "今天天气",
      'time': '2025-08-12 10:01:22',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: answerList.map((item) {
              return item['type'] == ChatType.AI.index
                  ? AiChat(item: item)
                  : MeChat(item: item);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
