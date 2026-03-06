import 'dart:convert';
import 'package:fluent_ui/fluent_ui.dart' hide Colors;
import 'package:flutter/material.dart';


class Avatar extends StatelessWidget {
  final double size;
  final String image;
  const Avatar({super.key, required this.size, required this.image});

  @override
  Widget build(BuildContext context) {
    final hasImage = this.image != null && this.image.isNotEmpty;
    print("ssdasda");
    return SizedBox(
      height: this.size,
      width: this.size,
      child: ClipOval(
        child: hasImage
            ? Image.memory(
                base64Decode(this.image!),
                width: this.size,
                height: this.size,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                gaplessPlayback: true,
              )
            : Container(
                alignment: Alignment.center,
                child: WindowsIcon(
                  FluentIcons.contact,
                  size: this.size * 0.8,
                  color: Colors.grey[500],
                ),
              ),
      ),
    );
  }
}
