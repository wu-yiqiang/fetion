import 'package:fetion/widgets/Avatar.dart' show Avatar;
import 'package:flutter/material.dart';

StatusAvatar({double size = 40, required String image}) {
  return Container(
    // color: Colors.amber,
    child: Stack(
      alignment: Alignment.bottomRight,
      children: [
        Avatar(size: size, image: image),
        Positioned(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Container(
              color: Colors.white38,
              padding: EdgeInsets.all(2),
              child: Icon(Icons.circle, color: Colors.green, size: size / 4),
            ),
          ),
          right: 0,
          bottom: 0,
        ),
      ],
    ),
  );
}
