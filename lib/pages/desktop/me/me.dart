import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';
import 'package:fetion/pages/desktop/me/widgets/InfoItem.dart';
import 'package:fetion/pages/desktop/me/widgets/UpdateAvatar.dart';
import 'package:fetion/pages/desktop/me/widgets/UserInfoModal.dart';
import 'package:fetion/pages/desktop/me/widgets/UserInfoNumberModal.dart';
import 'package:fetion/widgets/RowItem.dart';
import 'package:fetion/widgets/ScrollViews.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MePage extends StatefulWidget {
  const MePage({super.key});
  @override
  State<MePage> createState() => _MePage();
}

class _MePage extends State<MePage> {
  late SettingController settingController = Get.put(SettingController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        UpdateAvatar(),
        RowItem(
            child: ScrollViews(
              child: SingleChildScrollView(
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Obx(() {
                      return InfoItem(
                        'fullName'.tr,
                        settingController.setting.value.fullName,
                        () {
                          userInfoModal(
                            context,
                            'fullName',
                            settingController.setting.value.fullName ?? '',
                            title: 'fullName'.tr,
                          );
                        },
                      );
                    }),
                    Obx(() {
                      return InfoItem(
                        'nickName'.tr,
                        settingController.setting.value.nickName,
                        () {
                          userInfoModal(
                            context,
                            'nickName',
                            settingController.setting.value.nickName ?? '',
                            title: 'nickName'.tr,
                          );
                        },
                      );
                    }),
                  Obx(() {
                    return InfoItem(
                      'email'.tr,
                      settingController.setting.value.email,
                      () {
                        userInfoModal(
                          context,
                          'email',
                          settingController.setting.value.email ?? '',
                          title: 'email'.tr,
                        );
                      },
                    );
                  }),
                  Obx(() {
                    return InfoItem(
                      'gender'.tr,
                      settingController.setting.value.gender,
                      () {
                        userInfoModal(
                          context,
                          'gender',
                          settingController.setting.value.gender ?? '',
                          title: 'gender'.tr,
                        );
                      },
                    );
                  }),
              
                  
                  Obx(() {
                    return InfoItem(
                      'age'.tr,
                      settingController.setting.value.age.toString(),
                      () {
                        userInfoNumberModal(
                          context,
                          'age',
                          settingController.setting.value.age ?? 0,
                          title: 'age'.tr,
                        );
                      },
                    );
                  }),
                  Obx(() {
                    return InfoItem(
                      'phone'.tr,
                      settingController.setting.value.phone,
                      () {
                        userInfoModal(
                          context,
                          'phone',
                          settingController.setting.value.phone ?? '',
                          title: 'phone'.tr,
                        );
                      },
                    );
                  }),
                  Obx(() {
                    return InfoItem(
                      'address'.tr,
                      settingController.setting.value.address,
                      () {
                        userInfoModal(
                          context,
                          'address',
                          settingController.setting.value.address ?? '',
                          title: 'address'.tr,
                        );
                      },
                    );
                  }),
                  Obx(() {
                    return InfoItem(
                        'slogan'.tr,
                        settingController.setting.value.slogan,
                        () {
                          userInfoModal(
                            context,
                            'slogan',
                            settingController.setting.value.slogan ?? '',
                            title: 'slogan'.tr,
                          );
                        },
                      );
                    }),
                    Obx(() {
                      return InfoItem(
                        'department'.tr,
                        settingController.setting.value.department,
                        () {
                          userInfoModal(
                            context,
                            'department',
                            settingController.setting.value.department ?? '',
                            title: 'department'.tr,
                          );
                        },
                      );
                    }),
                    Obx(() {
                      return InfoItem(
                        'position'.tr,
                        settingController.setting.value.position,
                        () {
                          userInfoModal(
                            context,
                            'position',
                            settingController.setting.value.position ?? '',
                            title: 'position'.tr,
                          );
                        },
                      hasBorder: false,
                      );
                  }),
                  ],
                ),
              ),
            ),
        ),
      ],
    );
  }
}
