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
          color: FluentTheme.of(context).menuColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: kElevationToShadow[6],
        ),
        actionsDecoration: BoxDecoration(
          color: FluentTheme.of(context).micaBackgroundColor,
          borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(6),
          ),
        ),
      ),
      title: Texts(
        text: title,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      content: Container(
        child: TextBox(controller: textController, maxLength: 50),
        height: 34,
      ),
      actions: [
        Button(
          child: Texts(text: 'cancel'.tr, fontSize: 14),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FilledButton(
          child: Texts(text: 'save'.tr, fontSize: 14),
          onPressed: () {
            meController.updateMeUser(key, textController.text);
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
