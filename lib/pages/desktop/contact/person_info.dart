import 'package:fetion/common/const.dart';
import 'package:fetion/pages/desktop/contact/controller/contact_controller.dart';
import 'package:fetion/pages/desktop/me/widgets/ReadonlyInfoItem.dart';
import 'package:fetion/widgets/Avatar.dart';
import 'package:fetion/widgets/FluentIcon.dart';
import 'package:fetion/widgets/RowItem.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

class PersonInfo extends StatefulWidget {
  final String userId;
  const PersonInfo(this.userId, {super.key});
  @override
  State<PersonInfo> createState() => _PersonInfo();
}

class _PersonInfo extends State<PersonInfo> {
  late UserController userController = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    userController.getUserInfo(widget.userId);
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        spacing: 20,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Avatar(
                size: 80,
                image: userController.user.value?.avatar ?? DefaultAvatar,
              ),
            ],
          ),
          RowItem(
            child: Flex(
              direction: Axis.vertical,
              children: [
                ReadonlyInfoItem(
                  'FullName',
                  userController.user.value?.fullName ?? '',
                ),
                ReadonlyInfoItem(
                  'NickName',
                  userController.user.value?.nickName ?? '',
                ),
                ReadonlyInfoItem(
                  'Email',
                  userController.user.value?.email ?? '',
                ),
                ReadonlyInfoItem(
                  'Gender',
                  userController.user.value?.gender ?? '',
                ),
                ReadonlyInfoItem(
                  'Age',
                  userController.user.value?.age.toString() ?? '',
                ),
                ReadonlyInfoItem(
                  'Phone',
                  userController.user.value?.phone ?? '',
                ),
                ReadonlyInfoItem(
                  'Address',
                  userController.user.value?.address ?? '',
                ),
                ReadonlyInfoItem(
                  'Slogan',
                  userController.user.value?.slogan ?? '',
                ),
                ReadonlyInfoItem(
                  'Department',
                  userController.user.value?.department ?? '',
                ),
                ReadonlyInfoItem(
                  'Position',
                  userController.user.value?.position ?? '',
                  hasBorder: false,
                ),
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
                  FluentIcon(icon: WindowsIcons.phone, size: 30, onTap: () {}),
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
