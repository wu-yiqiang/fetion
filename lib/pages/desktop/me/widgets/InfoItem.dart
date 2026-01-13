import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/MouseRegions.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoItem extends StatefulWidget {
  const InfoItem(
    String this.title,
    dynamic this.value,
    Function this.onPressed, {
    super.key,
    this.hasBorder = true
  });
  final String title;
  final dynamic value;

  final Function onPressed;
  
  final bool hasBorder;

  @override
  State<InfoItem> createState() => _InfoItem();
}

class _InfoItem extends State<InfoItem> {
  @override
  Widget build(BuildContext context) {
    return MouseRegions(
      child: Container(
        padding: EdgeInsets.only(bottom: 6, top: 6),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 1,
              color: widget.hasBorder ? black4 : Colors.transparent,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Texts(text: widget.title),
            Texts(text: widget.value ?? ''),
          ],
        ),
      ),
      onPress: () {
        widget.onPressed();
      },
    );
  }
}
