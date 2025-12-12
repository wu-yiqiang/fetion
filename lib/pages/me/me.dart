import 'package:fetion/pages/contact/desktop/friends.dart';
import 'package:fetion/pages/contact/desktop/friends_box.dart' show FriendsBox;
import 'package:fetion/utils/EventBus.dart';
import 'package:flutter/material.dart';

class MePage extends StatefulWidget {
  const MePage({super.key});
  @override
  State<MePage> createState() => _MePage();
}

class _MePage extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: const Color.fromARGB(255, 240, 240, 240),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.blue),
          foregroundColor: WidgetStateProperty.all(Colors.white),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
        ),
        child: Text("个人信息更新"),
        onPressed: () {
          eventBus.emit(Events.GLOBALMESSAGES.name, "XXX已上线");
        },
      ),
    );
  }
}
