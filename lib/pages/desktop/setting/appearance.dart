import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/pages/desktop/me/controller/me_controller.dart';
import 'package:fetion/widgets/RowItem.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

class AppearancePage extends StatefulWidget {
  const AppearancePage({super.key});
  @override
  State<AppearancePage> createState() => _AppearancePage();
}

class _AppearancePage extends State<AppearancePage> {
  final MeController meController = Get.put(MeController());

  void onReady() {
    // String? selectLanguage = meController.user.value.language.toString();
    // String? selectTheme = meController.user.value.theme.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 2,
        children: [
          Container(
            child: Texts(text: 'Appearance', color: black90),
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
                          Texts(text: 'Language', fontSize: 13, color: black90),
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
                              meController.updateMeUser(
                                'langType',
                                Languages.where(
                                  (u) => u['value'] == value,
                                )?.map((list) => list['type']).join()!,
                              );
                              meController.updateMeUser(
                                'langCountry',
                                Languages.where(
                                  (u) => u['value'] == value,
                                )?.map((list) => list['country']).join()!,
                              );
                              meController.updateMeUser(
                                'language',
                                Languages.where(
                                  (u) => u['value'] == value,
                                )?.map((list) => list['value']).join()!,
                              );
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
                          Texts(text: 'Theme', fontSize: 13, color: black90),
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
                            text: 'Font Size',
                            fontSize: 13,
                            color: black90,
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
