import 'package:fetion/pages/desktop/contact/controller/contact_controller.dart';
import 'package:fetion/pages/desktop/contact/person.dart' show Person;
import 'package:fetion/widgets/ScrollViews.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Persons extends StatefulWidget {
  const Persons({super.key});
  @override
  State<Persons> createState() => _Persons();
}

class _Persons extends State<Persons> {
  late UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    print(userController.users);
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
