import 'dart:convert';
import 'package:flutter/material.dart';

Avatar({
  double size = 40,
  required String image,
}) {
  return Container(
    child: SizedBox(
      height: size,
      width: size,
      child: Align(
        alignment: Alignment.topCenter,
        child: ClipOval(
          child: Image.memory(
            base64Decode(image),
            width: size,
            height: size,
            fit: BoxFit.fill,
          ),
        ),
      ),
    ),
  );
}
