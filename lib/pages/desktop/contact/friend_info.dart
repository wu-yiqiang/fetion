import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/Avatar.dart';
import 'package:fetion/widgets/FluentIcon.dart';
import 'package:fetion/widgets/MouseRegions.dart';
import 'package:fetion/widgets/RowItem.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fetion/widgets/Toast.dart';
import 'package:fluent_ui/fluent_ui.dart';

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
            children: [Avatar(size: 80, image: DefaultAvatar)],
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
              Column(
                spacing: 8,
                children: [
                  FluentIcon(
                    icon: WindowsIcons.message,
                    size: 24,
                    onTap: () {},
                  ),
                  Texts(text: "Message", color: black90),
                ],
              ),
              Column(
                spacing: 8,
                children: [
                  FluentIcon(icon: WindowsIcons.phone, size: 24, onTap: () {}),
                  Texts(text: "Call", color: black90),
                ],
              ),
              Column(
                spacing: 8,
                children: [
                  FluentIcon(
                    icon: WindowsIcons.video,
                    size: 24,
                    onTap: () {
                      return Toast(InfoBarSeverity.error, 'sdsds');
                    },
                  ),
                  Texts(text: "Video", color: black90),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
