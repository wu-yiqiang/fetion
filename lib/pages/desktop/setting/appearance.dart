import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/pages/desktop/me/controller/me_controller.dart';
import 'package:fetion/widgets/RowItem.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:fluent_ui/fluent_ui.dart';

class AppearancePage extends StatefulWidget {
  const AppearancePage({super.key});
  @override
  State<AppearancePage> createState() => _AppearancePage();
}

class _AppearancePage extends State<AppearancePage> {
  final MeController meController = Get.put(MeController());

  void onReady() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 2,
        children: [
          Container(
            child: Texts(text: 'appearance'.tr, fontWeight: FontWeight.w500),
          ),
          Column(
            spacing: 6,
            children: [
              RowItem(
                child: Container(
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 6,
                        children: [
                          WindowsIcon(WindowsIcons.locale_language, size: 16),
                          Texts(
                            text: 'language'.tr,
                            fontSize: 13,
                          ),
                        ],
                      ),
                      Container(
                        width: 100,
                        child: ComboBox<String>(
                          value: meController.user.value.language,
                          items: Languages.map<ComboBoxItem<String>>((e) {
                            return ComboBoxItem<String>(
                              child: Text(
                                e['value']!,
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              value: e['value']!,
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              final langItem = Languages?.where(
                                (u) => u['value'] == value,
                              ).toList();
                              final langType = langItem
                                  ?.map((list) => list['type'])
                                  .join();
                              meController.updateMeUser('langType', langType);
                              final langCountry = langItem
                                  ?.map((list) => list['country'])
                                  .join();
                              meController.updateMeUser(
                                'langCountry',
                                langCountry,
                              );
                              final language = langItem
                                  ?.map((list) => list['value'])
                                  .join();
                              meController.updateMeUser('language', language);
                              final locale = Locale(langType!, langCountry);
                              Get.updateLocale(locale);
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              RowItem(
                child: Container(
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 6,
                        children: [
                          WindowsIcon(WindowsIcons.color, size: 16),
                          Texts(text: 'theme'.tr, fontSize: 13),
                        ],
                      ),
                      Obx(() {
                        return Container(
                          width: 100,
                          child: ComboBox<String>(
                            value: meController.user.value.theme,
                            items: ThemeModes.map<ComboBoxItem<String>>((e) {
                              return ComboBoxItem<String>(
                                child: Text(
                                  e,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                value: e,
                              );
                            }).toList(),
                            onChanged: (value) {
                              meController.updateMeUser('theme', value);
                            },
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
              RowItem(
                child: Container(
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 6,
                        children: [
                          WindowsIcon(WindowsIcons.font, size: 16),
                          Texts(
                            text: 'fontSize'.tr,
                            fontSize: 13,
                          ),
                        ],
                      ),
                      Obx(() {
                        return Slider(
                          min: 10,
                          max: 18,
                          label: '${meController.user.value.fontSize}',
                          value: meController.user.value.fontSize.toDouble(),
                          onChanged: (v) {
                            meController.updateMeUser('fontSize', v.toInt());
                          },
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
