import 'package:fetion/pages/desktop/notice/controller/notice_controller.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

class AddContact extends StatefulWidget {
  final dynamic item;

  const AddContact(this.item, {super.key});
  @override
  State<AddContact> createState() => _AddContact();
}

class _AddContact extends State<AddContact> {
  late NoticeController noticeController = Get.put(NoticeController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InfoBar(
      title: Align(
        alignment: Alignment.centerLeft,
        heightFactor: 0.6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "contactRequest".trParams({'contact': 'Sutter'}),
              style: TextStyle(fontWeight: FontWeight.w400, height: 1.2),
            ),
            IconButton(
              icon: Icon(WindowsIcons.clear),
              onPressed: () {
                noticeController.deleteNotice(widget.item.id);
              },
            ),
          ],
        ),
      ),
      severity: InfoBarSeverity.info,
      isLong: true,
      action: Row(
        spacing: 20,
        children: [
          Button(child: Text('reject'.tr), onPressed: () {}),
          FilledButton(child: Text('agree'.tr), onPressed: () {}),
        ],
      ),
    );
  }
}
