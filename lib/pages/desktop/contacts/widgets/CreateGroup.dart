import 'package:fluent_ui/fluent_ui.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:get/get.dart';

void CreateGroup(BuildContext context) async {
  final TextEditingController textController = TextEditingController(text: '');
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
          borderRadius: const BorderRadius.vertical(bottom: Radius.circular(6)),
        ),
      ),
      title: Texts(
        text: 'createGroup'.tr,
        fontSize: 20,
        fontWeight: FontWeight.w500,
      ),
      content: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [TextBox()],
        ),
      ),
      actions: [
        Button(
          child: Texts(text: 'cancel'.tr, fontSize: 14),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        FilledButton(
          child: Texts(text: 'create'.tr, fontSize: 14),
          onPressed: () {},
        ),
      ],
    ),
  );
}
