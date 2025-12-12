import 'package:fetion/common/const.dart';
import 'package:fetion/pages/messages/desktop/input_tools.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:flutter/material.dart';

class InputDialog extends StatefulWidget {
  const InputDialog({super.key});
  @override
  State<InputDialog> createState() => _InputDialog();
}

class _InputDialog extends State<InputDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(width: 1, color: white10)),
      ),
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 6,
        children: [
          InputTools(),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(240, 240, 240, 240),
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              child: TextField(
                maxLines: 4,
                style: TextStyle(fontSize: 12),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Input",
                  contentPadding: EdgeInsets.zero,
                  prefixIconConstraints: BoxConstraints(minHeight: 32),
                  floatingLabelStyle: TextStyle(color: Colors.blueAccent),
                  isDense: true,
                  border: InputBorder.none,
                ),
                // onChanged: (value) {
                //   loginController.setLoginForm('password', value);
                // },
              ),
            ),
          ),
          Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.blue),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ),
                  child: Texts(text: "Send"),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
