import 'dart:convert';
import 'package:fluent_ui/fluent_ui.dart' hide Colors;
import 'package:flutter/material.dart';
import 'package:fetion/widgets/FluentIcon.dart';

Avatar({double size = 40, String? image}) {
  final hasImage = image != null && image!.isNotEmpty;
  return SizedBox(
    height: size,
    width: size,
    child: ClipOval(
      child: hasImage
          ? Image.memory(
              base64Decode(image!),
              width: size,
              height: size,
              fit: BoxFit.cover,
            )
          : Container(
              color: Colors.grey[200],
              alignment: Alignment.center,
              child: WindowsIcon(
                FluentIcons.contact,
                size: size * 0.5,
                color: Colors.grey[500],
              ),
            ),
    ),
  );
}
