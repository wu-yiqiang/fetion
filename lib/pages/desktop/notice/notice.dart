import 'package:fetion/pages/desktop/notice/controller/notice_controller.dart';
import 'package:fetion/widgets/Empty.dart';
import 'package:fetion/widgets/ScrollViews.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:fetion/pages/desktop/notice/widgets/add_contact.dart';
import 'package:get/get.dart';

class NoticePage extends StatefulWidget {
  const NoticePage({super.key});
  @override
  State<NoticePage> createState() => _NoticePage();
}

class _NoticePage extends State<NoticePage> {
  late NoticeController noticeController = Get.put(NoticeController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return noticeController.notices.length > 0
          ? ScrollViews(
              child: SingleChildScrollView(
                child: Flex(
                  direction: Axis.vertical,
                  spacing: 10,
                  children: noticeController.notices.value.map((item) {
                    return AddContact(item);
                  }).toList(),
                ),
              ),
            )
          : Column(children: [Empty()]);
    });
  }
}
