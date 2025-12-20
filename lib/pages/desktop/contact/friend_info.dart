import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/Avatar.dart' show Avatar;
import 'package:fetion/widgets/FluentIcon.dart';
import 'package:fetion/widgets/MouseRegions.dart';
import 'package:fetion/widgets/RowItem.dart';
import 'package:fetion/widgets/Separator.dart';
import 'package:fetion/widgets/SvgIcon.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class FriendInfo extends StatefulWidget {
  const FriendInfo({super.key});
  @override
  State<FriendInfo> createState() => _FriendInfo();
}

class _FriendInfo extends State<FriendInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        spacing: 20,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Avatar(size: 80, image: "assets/images/user.jpg")],
          ),
          RowItem(
            child: Flex(
              direction: Axis.vertical,
              children: [
                MouseRegions(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Texts(text: "FullName", color: black90),
                      Texts(text: "Sutter", color: black90),
                    ],
                  ),
                  onPress: () {},
                ),
                Separator(),
                MouseRegions(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Texts(text: "NickName", color: black90),
                      Texts(text: "kitty", color: black90),
                    ],
                  ),
                  onPress: () {},
                ),
                Separator(),
                MouseRegions(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Texts(text: "Phone", color: black90),
                      Texts(text: "15678900783", color: black90),
                    ],
                  ),
                  onPress: () {},
                ),
                Separator(),
                MouseRegions(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Texts(text: "Sign", color: black90),
                      Texts(text: "Hello, word", color: black90),
                    ],
                  ),
                  onPress: () {},
                ),
                Separator(),
                MouseRegions(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Texts(text: "Department", color: black90),
                      Texts(text: "Develop", color: black90),
                    ],
                  ),
                  onPress: () {},
                ),
                Separator(),
                MouseRegions(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Texts(text: "Position", color: black90),
                      Texts(text: "IT", color: black90),
                    ],
                  ),
                  onPress: () {},
                ),
                Separator(),
                MouseRegions(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Texts(text: "Group", color: black90),
                      Texts(text: "sss", color: black90),
                    ],
                  ),
                  onPress: () {},
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 30,
            children: [
              FluentIcon(icon: WindowsIcons.message,size: 24, onTap: () {}), FluentIcon(icon: WindowsIcons.phone, size: 24, onTap: () {}), FluentIcon(icon: WindowsIcons.video, size: 24, onTap: () {}),
            ],)
        ],
      ),
    );
  }
}
