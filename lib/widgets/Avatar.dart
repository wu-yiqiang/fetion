import 'package:flutter/material.dart';

Avatar({
  double size = 40,
  required String image,
}) {
  return Container(
    child: SizedBox(
      height: size,
      width: size,
      child: CircleAvatar(
        radius: size / 2,
        // backgroundImage: AssetImage("assets/images/user.jpg"),
        backgroundImage: AssetImage(image),
      ),
    ),
  );
}
