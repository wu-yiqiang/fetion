import 'package:fetion/common/const.dart';
import 'package:fetion/widgets/InkWells.dart';
import 'package:flutter/material.dart';

class InputTools extends StatefulWidget {
  const InputTools({super.key});
  @override
  State<InputTools> createState() => _InputTools();
}

class _InputTools extends State<InputTools> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      child: Row(
        spacing: 10,
        children: [
          InkWells(
            child: Icon(Icons.sentiment_satisfied_outlined, size: 20),
            onPress: () {},
          ),
          InkWells(
            child: Icon(Icons.folder_outlined, size: 20),
            onPress: () {},
          ),
          InkWells(
            child: Icon(Icons.image_outlined, size: 20,),onPress: () {},),
          InkWells(child: Icon(Icons.mic_none_outlined, size: 20), onPress: () {}),
        ],
      ),
    );
  }
}
