import 'package:fetion/common/light-theme.dart';
import 'package:fetion/navigate/router_table.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:fetion/widgets/Avatar.dart';
import 'package:fetion/pages/desktop/me/widgets/UserInfoModal.dart';
import 'package:fetion/widgets/MouseRegions.dart';
import 'package:fetion/widgets/RowItem.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fetion/pages/desktop/me/controller/me_controller.dart';

class MePage extends StatefulWidget {
  const MePage({super.key});
  @override
  State<MePage> createState() => _MePage();
}

class _MePage extends State<MePage> {
  late MeController meController = Get.put(MeController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Avatar(size: 80, image: "assets/images/user.jpg"),
            Button(
              child: Text('login'),
              onPressed: () {
                eventBus.emit(Events.NAVIGATE.name, RouterMap.LOGIN);
              },
            ),
          ],
        ),
        RowItem(
          child: Flex(
            direction: Axis.vertical,
            children: [
              MouseRegions(
                child: Container(
                  padding: EdgeInsets.only(bottom: 6, top: 6),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: black4)),
                  ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Texts(text: "FullName", color: black90),
                    Obx(() {
                      return Texts(
                        text: meController.user.value?.fullName ?? '',
                        color: black90,
                      );
                    }),
                  ],
                ),
                ),
                onPress: () {
                  userInfoModal(
                    context,
                    'fullName',
                    meController.user.value.fullName ?? '',
                  );
                },
              ),
              MouseRegions(
                child: Container(
                  padding: EdgeInsets.only(bottom: 6, top: 6),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: black4)),
                  ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Texts(text: "NickName", color: black90),
                    Obx(() {
                      return Texts(
                        text: meController.user.value.nickName,
                        color: black90,
                      );
                    }),
                  ],
                  ),
                ),
                onPress: () {
                  userInfoModal(
                    context,
                    'nickName',
                    meController.user.value.nickName ?? '',
                  );
                },
              ),
              MouseRegions(
                child: Container(
                  padding: EdgeInsets.only(bottom: 6, top: 6),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: black4)),
                  ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Texts(text: "Phone", color: black90),
                    Obx(() {
                      return Texts(
                        text: meController.user.value.phone ?? '',
                        color: black90,
                      );
                    }),
                  ],
                  ),
                ),
                onPress: () {
                  userInfoModal(
                    context,
                    'phone',
                    meController.user.value.phone ?? '',
                  );
                },
              ),
              MouseRegions(
                child: Container(
                  padding: EdgeInsets.only(bottom: 6, top: 6),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: black4)),
                  ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Texts(text: "Slogan", color: black90),
                    Obx(() {
                      return Texts(
                        text: meController.user.value.slogan ?? '',
                        color: black90,
                      );
                    }),
                    ],
                  ),
                ),
                onPress: () {
                  userInfoModal(
                    context,
                    'slogan',
                    meController.user.value.slogan ?? '',
                  );
                },
              ),
              MouseRegions(
                child: Container(
                  padding: EdgeInsets.only(bottom: 6, top: 6),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: black4)),
                  ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Texts(text: "Department", color: black90),
                    Obx(() {
                      return Texts(
                        text: meController.user.value.department ?? '',
                        color: black90,
                      );
                    }),
                  ],
                  
                  ),
                ),
                onPress: () {
                  userInfoModal(
                    context,
                    'department',
                    meController.user.value.department ?? '',
                  );
                },
              ),
              MouseRegions(
                child: Container(
                  padding: EdgeInsets.only(bottom: 6, top: 6),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: black4)),
                  ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Texts(text: "Position", color: black90),
                    Obx(() {
                      return Texts(
                        text: meController.user.value.position ?? '',
                        color: black90,
                      );
                    }),
                    ],
                  ),
                ),
                onPress: () {
                  userInfoModal(
                    context,
                    'position',
                    meController.user.value.position ?? '',
                  );
                },
              ),
              MouseRegions(
                child: Container(
                  padding: EdgeInsets.only(bottom: 6, top: 6),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: black4)),
                  ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Texts(text: "Gateway", color: black90),
                    Obx(() {
                      return Texts(
                          text: meController.user.value.gateway ?? '',
                        color: black90,
                      );
                    }),
                  ],
                  ),
                ),
                onPress: () {},
              ),
              MouseRegions(
                child: Container(
                  padding: EdgeInsets.only(bottom: 6, top: 6),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: black4)),
                  ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Texts(text: "IPV4", color: black90),
                    Obx(() {
                      return Texts(
                        text: meController.user.value.ipv4Addr ?? '',
                        color: black90,
                      );
                    }),
                  ],
                  ),
                ),
                onPress: () {},
              ),
              MouseRegions(
                child: Container(
                  padding: EdgeInsets.only(bottom: 6, top: 6),
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(width: 1, color: black4)),
                  ),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Texts(text: "IPV6", color: black90),
                    Obx(() {
                      return Texts(
                        text: meController.user.value.ipv6Addr ?? '',
                        color: black90,
                      );
                    }),
                  ],
                  ),
                ),
                onPress: () {},
              ),
              MouseRegions(
                child: Container(
                  padding: EdgeInsets.only(top: 6),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Texts(text: "MAC", color: black90),
                    Obx(() {
                      return Texts(
                        text: meController.user.value.macAddr ?? '',
                        color: black90,
                      );
                    }),
                  ],
                  ),
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
