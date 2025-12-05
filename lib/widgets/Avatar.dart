import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 40,
        width: 40,
        child: CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage("assets/images/user.jpg"),
        ),
      ),
    );
  }
}
