import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/db/models/message.model.dart';
import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';
import 'package:fetion/pages/desktop/messages/controller/message_controller.dart';
import 'package:fetion/widgets/FluentIcon.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:realm/realm.dart';

class InputDialog extends StatefulWidget {
  final String userId;

  const InputDialog(this.userId, {super.key});
  @override
  State<InputDialog> createState() => _InputDialog();
}

class _InputDialog extends State<InputDialog> {
  MessageController messageController = Get.put(MessageController());
  SettingController settingController = Get.put(SettingController());
  final TextEditingController _controller = TextEditingController();
  late Message message;
  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(width: 1, color: black4)),
        color: theme.cardColor,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 0),
        decoration: BoxDecoration(
          color: black4,
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: Row(
          children: [
            FluentIcon(icon: WindowsIcons.attach, onTap: () {}),
            Expanded(
              child: TextBox(
                controller: _controller,
                unfocusedColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onSubmitted: (value) {
                  handleSubmit(widget.userId);
                },
                decoration: WidgetStatePropertyAll<BoxDecoration>(
                  BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(color: Colors.transparent, width: 0),
                  ),
                ),
              ),
            ),
            Row(
              spacing: 8,
              children: [
                FluentIcon(icon: WindowsIcons.emoji2, onTap: () {}),
                FluentIcon(icon: WindowsIcons.microphone, onTap: () {}),
                FluentIcon(
                  icon: WindowsIcons.send,
                  onTap: () {
                    handleSubmit(widget.userId);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  handleSubmit(String userId) async {
    message = Message(
      ObjectId().toString(),
      settingController.setting.value.userId,
      userId,
      _controller.text,
      MsgType.TEXT,
      MsgStatus.SENDED,
      DateTime.now().millisecondsSinceEpoch,
      DateTime.now().millisecondsSinceEpoch,
    );
    messageController.addMessage(message);
    _controller.text = "";
    await messageController.getMessagePage(userId);
  }
}
