import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/pages/desktop/messages/topbar_tools.dart';
import 'package:fetion/widgets/StatusAvatar.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:flutter/material.dart';

class SingleTopbar extends StatefulWidget {
  const SingleTopbar({super.key});
  @override
  State<SingleTopbar> createState() => _SingleTopbar();
}

class _SingleTopbar extends State<SingleTopbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: black4)),
      ),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
            spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                StatusAvatar(size: 34, image: DefaultAvatar),
                Texts(text: "啦啦啦先生", fontSize: 14)
            ],
          )),
          TopbarTools(),
        ]),
    );
  }
}
