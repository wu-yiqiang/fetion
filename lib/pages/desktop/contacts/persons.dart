import 'package:fetion/pages/desktop/contacts/controller/contact_controller.dart';
import 'package:fetion/pages/desktop/contacts/person.dart' show Person;
import 'package:fetion/utils/EventBus.dart';
import 'package:fetion/widgets/ScrollViews.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Persons extends StatefulWidget {
  const Persons({super.key});
  @override
  State<Persons> createState() => _Persons();
}

class _Persons extends State<Persons> {
  late UserController userController = Get.find<UserController>();

  initState() {
    super.initState();
    eventBus.on(Events.SEARCHCONTACT.name, (value) {
      userController.getUserLists(username: value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScrollViews(
      child: SingleChildScrollView(
        child: Obx(() {
          return Column(
            children: userController.users.map((item) {
              return Person(item);
            }).toList(),
          );
        }),
      ),
    );
  }
}
