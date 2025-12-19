// import 'package:fetion/pages/desktop/contact/friends.dart';
// import 'package:fetion/pages/desktop/contact/friends_box.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:fetion/widgets/Avatar.dart';
import 'package:fetion/widgets/MouseRegions.dart';
import 'package:fetion/widgets/RowItem.dart';
import 'package:fetion/widgets/Separator.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class MePage extends StatefulWidget {
  const MePage({super.key});
  @override
  State<MePage> createState() => _MePage();
}

class _MePage extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
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
            ],
          ),
        ),
      ],
    );
  }
}
