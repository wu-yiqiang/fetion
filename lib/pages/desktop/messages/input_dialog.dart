import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/FluentIcon.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors;

class InputDialog extends StatefulWidget {
  const InputDialog({super.key});
  @override
  State<InputDialog> createState() => _InputDialog();
}

class _InputDialog extends State<InputDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(width: 1, color: white10)),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
        decoration: BoxDecoration(
          color: black4,
          borderRadius: BorderRadius.all(Radius.circular(4)),
        ),
        child: Row(
          children: [
            FluentIcon(icon: WindowsIcons.attach, onTap: () {}),
            Expanded(child: TextBox(
                unfocusedColor: Colors.transparent,
                highlightColor: Colors.transparent,
                decoration: WidgetStatePropertyAll<BoxDecoration>(
                  BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(0),
                    border: Border.all(color: Colors.transparent, width: 0),
                  ),
                ),
            )),
            // Expanded(
            //   child: TextField(
            //     // style: TextStyle(fontSize: 12),
            //     // keyboardType: TextInputType.text,
            //     // decoration: InputDecoration(
            //     //   hintText: "Please Input",
            //     //   // contentPadding: EdgeInsets.zero,
            //     //   // prefixIconConstraints: BoxConstraints(minHeight: 32),
            //     //   floatingLabelStyle: TextStyle(color: blue1),
            //     //   isDense: true,
            //     //   border: InputBorder.none,
            //     // ),
            //     // onChanged: (value) {
            //     //   loginController.setLoginForm('password', value);
            //     // },
            //   ),
            // ),
            Row(
              spacing: 8,
              children: [
                FluentIcon(icon: WindowsIcons.emoji2, onTap: () {}),
                FluentIcon(icon: WindowsIcons.microphone, onTap: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
