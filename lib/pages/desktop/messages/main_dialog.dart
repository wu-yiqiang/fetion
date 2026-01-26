import 'package:fetion/common/const.dart';
import 'package:fetion/pages/desktop/messages/OtherChat.dart';
import 'package:fetion/pages/desktop/messages/MeChat.dart';
import 'package:fetion/widgets/ScrollViews.dart';
import 'package:flutter/material.dart';


class MainDialog extends StatefulWidget {
  const MainDialog({super.key});
  @override
  State<MainDialog> createState() => _MainDialog();
}

class _MainDialog extends State<MainDialog> {
  List answerList = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ScrollViews(
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: answerList.map((item) {
              return item['type'] == ChatType.OTHER
                  ? OtherChat(item: item)
                  : MeChat(item: item);
            }).toList(),
          ),
        ),
      ),
    );
  }
}
