import 'package:fetion/common/const.dart';
import 'package:fetion/pages/messages/desktop/topbar_tools.dart';
import 'package:fetion/widgets/StatusAvatar.dart';
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
      height: 42,
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: white10)),
      ),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(child: Row(
            spacing: 10,
            children: [
              StatusAvatar(size: 30,image: 'assets/images/user.jpg'),
              Text("啦啦啦先生")
            ],
          )),
          TopbarTools(),
        ]),
    );
  }
}
