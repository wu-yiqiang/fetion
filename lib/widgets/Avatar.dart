import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: SizedBox(
            height: 40,
            width: 40,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/images/user.jpg"),
            ),
          ),
        ),
        Positioned(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Container(
              color: Colors.white38,
              padding: EdgeInsets.all(2),
              child: Icon(Icons.circle, color: Colors.green, size: 10),
            ),
          ),
          right: 0,
          bottom: 0,
        ),
      ],
    );
  }
}
