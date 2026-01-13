import 'package:fetion/common/light-theme.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fetion/pages/desktop/me/controller/me_controller.dart';
import 'package:get/get.dart';

void userInfoNumberModal(
  BuildContext context,
  String key,
  int? value, {
  title = 'Edit',
}) async {
  final MeController meController = Get.put(MeController());
  // final TextEditingController textController = TextEditingController(
  //   text: text,
  // );
  int? _valueChanged = value;
  final result = await showDialog<String>(
    context: context,
    builder: (context) => ContentDialog(
      style: ContentDialogThemeData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
      ),
      title: Texts(
        text: title,
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
      content: Container(
        height: 34,
        child: NumberBox(
          value: value,
          mode: SpinButtonPlacementMode.inline,
          onChanged: (value) {
            _valueChanged = value;
          },
        ),
      ),
      actions: [
        Button(
          child: Texts(text: 'Cancel', fontSize: 14),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FilledButton(
          child: Texts(text: 'Save', fontSize: 14),
          onPressed: () {
            meController.updateMeUser(key, _valueChanged ?? 0);
            Navigator.pop(context);
          },
        ),
      ],
    ),
  );
}
