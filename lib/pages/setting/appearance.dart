import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/RowItem.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';

class AppearancePage extends StatefulWidget {
  const AppearancePage({super.key});
  @override
  State<AppearancePage> createState() => _AppearancePage();
}

class _AppearancePage extends State<AppearancePage> {
  final List<String> languages = ['English', '简体中文'];
  final List<String> themes = ['Light', 'Dark', 'System'];
  String? selectLanguage = 'English';
  String? selectTheme = 'Light';
  double fontSize = 12;
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
                      ComboBox<String>(
                        value: selectLanguage,
                        items: languages.map<ComboBoxItem<String>>((e) {
                          return ComboBoxItem<String>(
                            child: Text(
                              e,
                              style: TextStyle(decoration: TextDecoration.none),
                            ),
                            value: e,
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            this.selectLanguage = value;
                          });
                        },
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
                      ComboBox<String>(
                        value: selectTheme,
                        items: themes.map<ComboBoxItem<String>>((e) {
                          return ComboBoxItem<String>(
                            child: Text(
                              e,
                              style: TextStyle(decoration: TextDecoration.none),
                            ),
                            value: e,
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            this.selectTheme = value;
                          });
                        },
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
                          WindowsIcon(WindowsIcons.font, size: 16),
                          Texts(
                            text: 'Font Size',
                            fontSize: 13,
                            color: black90,
                          ),
                        ],
                      ),
                      Slider(
                        min: 10,
                        max: 18,
                        label: '${fontSize.toInt()}',
                        value: fontSize,
                        onChanged: (v) => setState(() => fontSize = v),
                      ),
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
