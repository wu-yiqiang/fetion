import 'package:fetion/common/const.dart';
import 'package:fetion/pages/desktop/me/widgets/InfoItem.dart';
import 'package:fetion/pages/desktop/me/widgets/UserInfoModal.dart';
import 'package:fetion/pages/desktop/me/widgets/UserInfoNumberModal.dart';
import 'package:fetion/widgets/Avatar.dart';
import 'package:fetion/widgets/RowItem.dart';
import 'package:fetion/widgets/ScrollViews.dart';
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
      spacing: 10,
      children: [
        Avatar(size: 70, image: DefaultAvatar),
        RowItem(
            child: ScrollViews(
              child: SingleChildScrollView(
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Obx(() {
                      return InfoItem(
                        'fullName'.tr,
                        meController.user.value.fullName,
                        () {
                          userInfoModal(
                            context,
                            'fullName',
                            meController.user.value.fullName ?? '',
                            title: 'fullName'.tr,
                          );
                        },
                      );
                    }),
                    Obx(() {
                      return InfoItem(
                        'nickName'.tr,
                        meController.user.value.nickName,
                        () {
                          userInfoModal(
                            context,
                            'nickName',
                            meController.user.value.nickName ?? '',
                            title: 'nickName'.tr,
                          );
                        },
                      );
                    }),
                    Obx(() {
                      return InfoItem(
                        'age'.tr,
                        meController.user.value.age.toString(),
                        () {
                          userInfoNumberModal(
                            context,
                            'age',
                            meController.user.value.age ?? 0,
                            title: 'age'.tr,
                          );
                        },
                      );
                    }),
                    Obx(() {
                      return InfoItem(
                        'email'.tr,
                        meController.user.value.email,
                        () {
                          userInfoModal(
                            context,
                            'email',
                            meController.user.value.email ?? '',
                            title: 'email'.tr,
                          );
                        },
                      );
                    }),
                    Obx(() {
                      return InfoItem(
                        'phone'.tr,
                        meController.user.value.phone,
                        () {
                          userInfoModal(
                            context,
                            'phone',
                            meController.user.value.phone ?? '',
                            title: 'phone'.tr,
                          );
                        },
                      );
                    }),
                    Obx(() {
                      return InfoItem(
                        'slogan'.tr,
                        meController.user.value.slogan,
                        () {
                          userInfoModal(
                            context,
                            'slogan',
                            meController.user.value.slogan ?? '',
                            title: 'slogan'.tr,
                          );
                        },
                      );
                    }),
                    Obx(() {
                      return InfoItem(
                        'department'.tr,
                        meController.user.value.department,
                        () {
                          userInfoModal(
                            context,
                            'department',
                            meController.user.value.department ?? '',
                            title: 'department'.tr,
                          );
                        },
                      );
                    }),
                    Obx(() {
                      return InfoItem(
                        'position'.tr,
                        meController.user.value.position,
                        () {
                          userInfoModal(
                            context,
                            'position',
                            meController.user.value.position ?? '',
                            title: 'position'.tr,
                          );
                        },
                      );
                    }),
                  // Obx(() {
                  //   return InfoItem(
                  //     'gateway'.tr,
                  //     meController.user.value.gateway,
                  //     () {},
                  //   );
                  // }),
                  // Obx(() {
                  //   return InfoItem(
                  //     'IPV4',
                  //     meController.user.value.ipv4Addr,
                  //     () {},
                  //   );
                  // }),
                  // Obx(() {
                  //   return InfoItem(
                  //     'IPV6',
                  //     meController.user.value.ipv6Addr,
                  //     () {},
                  //   );
                  // }),
                  // ReadonlyInfoItem('MAC', meController.user.value.macAddr),
                  ],
                ),
              ),
            ),
        ),
      ],
    );
  }
}
