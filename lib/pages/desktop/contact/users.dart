import 'package:fetion/pages/desktop/contact/controller/contact_controller.dart';
import 'package:fetion/pages/desktop/contact/user.dart' show Friend;
import 'package:fetion/widgets/ScrollViews.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});
  @override
  State<Friends> createState() => _Friends();
}

class _Friends extends State<Friends> {
  late UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    print(userController.users);
    return ScrollViews(
      child: SingleChildScrollView(
        child: Obx(() {
          return Column(
            children: userController.users.map((item) {
              return Friend(item);
            }).toList(),
          );
        }),
      ),
    );
  }
}
