import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});
  @override
  State<AboutPage> createState() => _AboutPage();
}

class _AboutPage extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 2,
        children: [
          Container(
            child: Texts(text: 'about'.tr, fontWeight: FontWeight.w500),
          ),
          Column(
            spacing: 6,
            children: [
              Expander(
                header: Row(
                  spacing: 6,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(child: WindowsIcon(FluentIcons.info, size: 16)),
                    Flex(
                      direction: Axis.horizontal,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 6,
                      children: [
                        Texts(
                          text: ApplicationName,
                          fontSize: 14,
                        ),
                        Texts(
                          text: '$ApplicationVersion',
                          fontSize: 12,
                        ),
                      ],
                    ),
                  ],
                ),
                content: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Texts(text: '特别鸣谢', fontSize: 16),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Texts(
                          text: '感谢Ada同学提供的UI帮助',
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expander(
                header: Row(
                  spacing: 6,
                  children: [
                    WindowsIcon(FluentIcons.o_d_link, size: 16),
                    Texts(text: 'linkAddress'.tr, fontSize: 13),
                  ],
                ),
                content: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      HyperlinkButton(
                        child: Text(
                          'openSource'.tr,
                          style: TextStyle(fontSize: 12,decoration: TextDecoration.none),
                        ),
                        onPressed: () {},
                      ),
                      HyperlinkButton(
                        child: Text(
                          'feedback'.tr,
                          style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.none),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
