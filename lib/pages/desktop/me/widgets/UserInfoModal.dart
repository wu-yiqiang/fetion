import 'package:fetion/common/light-theme.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fetion/pages/desktop/me/controller/me_controller.dart';
import 'package:get/get.dart';

void userInfoModal(BuildContext context,String key, String text, {title = 'Edit'}) async {
  final MeController meController = Get.put(MeController());
  final TextEditingController textController = TextEditingController(
    text: text,
  );
  final result = await showDialog<String>(
    context: context,
    builder: (context) => ContentDialog(
      style: ContentDialogThemeData(
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
      title: Texts(
        text: title,
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: black90,
      ),
      content: Container(
        child: TextBox(controller: textController),
        height: 34,
      ),
      actions: [
        Button(
          child: Texts(text: 'Cancel', fontSize: 14, color: black90),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FilledButton(
          child: Texts(text: 'Save', fontSize: 14, color: white),
          onPressed: () {
            meController.updateMeUser(key, textController.text);
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
