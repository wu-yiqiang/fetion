import 'package:fetion/common/const.dart';
import 'package:fetion/pages/desktop/me/widgets/ReadonlyInfoItem.dart';
import 'package:fetion/widgets/Avatar.dart';
import 'package:fetion/widgets/FluentIcon.dart';
import 'package:fetion/widgets/RowItem.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';

class PersonInfo extends StatefulWidget {
  const PersonInfo({super.key});
  @override
  State<PersonInfo> createState() => _PersonInfo();
}

class _PersonInfo extends State<PersonInfo> {
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
                ReadonlyInfoItem('FullName', 'Sutter'),
                ReadonlyInfoItem('NickName', '看哥梭哈'),
                ReadonlyInfoItem('Age', '20'),
                ReadonlyInfoItem('Email', 'sutter.wu@itforce-tech.com'),
                ReadonlyInfoItem('Phone', '13234567894'),
                ReadonlyInfoItem('Slogan', '今天天气真好'),
                ReadonlyInfoItem('Department', '开发部'),
                ReadonlyInfoItem('Position', '开发', hasBorder: false),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 60,
            children: [
              Column(
                spacing: 8,
                children: [
                  FluentIcon(
                    icon: WindowsIcons.message,
                    size: 30,
                    onTap: () {},
                  ),
                  Texts(text: "Message"),
                ],
              ),
              Column(
                spacing: 8,
                children: [
                  FluentIcon(
                    icon: WindowsIcons.phone,
                    size: 30,
                    onTap: () {},
                  ),
                  Texts(text: "Call"),
                ],
              ),
              Column(
                spacing: 8,
                children: [
                  FluentIcon(
                    icon: WindowsIcons.video,
                    size: 30,
                    onTap: () {
                      // return Toast(InfoBarSeverity.error, 'sdsds');
                    },
                  ),
                  Texts(text: "Video"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
