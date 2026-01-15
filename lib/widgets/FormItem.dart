import 'package:fetion/common/light-theme.dart';
import 'package:flutter/material.dart';

class FormItem extends StatelessWidget {
  final dynamic label;
  
  final dynamic content;

  const FormItem(this.label, this.content,{super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 6,
      children: [
        Container(
          width: 120,
          child: Text(this.label, style: TextStyle(fontSize: 14),),
        ),
        Text(this.content, style: TextStyle(fontSize: 13, color: gray), )
      ],
    );
  }
}