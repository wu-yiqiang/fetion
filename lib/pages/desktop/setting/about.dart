import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';

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
            child: Texts(text: 'About', color: black90),
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
                          color: black90,
                        ),
                        Texts(
                          text: '$ApplicationVersion',
                          fontSize: 12,
                          color: black90,
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
                      Texts(text: '特别鸣谢', fontSize: 16, color: black90),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Texts(
                          text: '感谢Ada同学提供的UI帮助',
                          fontSize: 13,
                          color: black90,
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
                    Texts(text: 'Link Address', fontSize: 13, color: black90),
                  ],
                ),
                content: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      HyperlinkButton(
                        child: Text(
                          'Open Source',
                          style: TextStyle(fontSize: 12,decoration: TextDecoration.none),
                        ),
                        onPressed: () {},
                      ),
                      HyperlinkButton(
                        child: Text(
                          'Feedback',
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
