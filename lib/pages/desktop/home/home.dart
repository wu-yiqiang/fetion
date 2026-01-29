import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/navigate/router_table.dart';
import 'package:fetion/pages/desktop/contact/contact.dart';
import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';
import 'package:fetion/pages/desktop/me/me.dart';
import 'package:fetion/pages/desktop/messages/controller/message_controller.dart';
import 'package:fetion/pages/desktop/messages/message_bar.dart';
import 'package:fetion/pages/desktop/notice/notice.dart';
import 'package:fetion/pages/desktop/setting/setting.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:fetion/widgets/StatusAvatar.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

class NavigationBodyItem extends StatelessWidget {
  const NavigationBodyItem({super.key, this.header, required this.content});
  final String? header;
  final Widget content;
  @override
  Widget build(context) {
    return ScaffoldPage.withPadding(
      header: PageHeader(title: Texts(text: header ?? '', fontSize: 24)),
      content: content,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SettingController settingController = Get.put(SettingController());
  final MessageController messageController = Get.put(MessageController());
  int topIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<NavigationPaneItem> items = [
      PaneItemSeparator(),
      PaneItem(
        icon: Icon(WindowsIcons.message, size: 16),
        title: Text('messages'.tr, style: TextStyle(fontSize: 14)),
        infoBadge: messageController.unReadCount.value == DisplayMinMessages
            ? null
            : InfoBadge(
                source: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: Row(
                    children:
                        messageController.unReadCount.value < DisplayMaxMessages
                        ? [
                            Text(
                              messageController.unReadCount.value.toString(),
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ]
                        : [
                            Text(
                              DisplayMaxMessages.toString(),
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '⁺',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                  ),
                ),
              ),
        body: MessageBar(),
      ),
      PaneItem(
        icon: Icon(WindowsIcons.contact_info, size: 16),
        title: Text('contacts'.tr, style: TextStyle(fontSize: 14)),
        body: ContactBar(),
      ),
      PaneItem(
        icon: Icon(FluentIcons.contact_list, size: 16),
        title: Text('groups'.tr, style: TextStyle(fontSize: 14)),
        body: const NavigationBodyItem(content: Text("ssss")),
      ),
      PaneItem(
        icon: Icon(WindowsIcons.contact, size: 16),
        title: Text('profiles'.tr, style: TextStyle(fontSize: 14)),
        body: NavigationBodyItem(content: MePage(), header: 'profiles'.tr),
      ),
    ];
    return NavigationView(
      pane: NavigationPane(
        selected: topIndex,
        onChanged: (index) {
          setState(() => topIndex = index);
        },
        displayMode: PaneDisplayMode.compact,
        items: items,
        size: NavigationPaneSize(openWidth: 250),
        header: Row(
          spacing: 6,
          children: [
            Flexible(
              child: Obx(() {
                return StatusAvatar(
                  image: settingController.setting.value.avatar ?? '',
                );
              }),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() {
                      return Text(
                        settingController.setting.value.nickName,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      );
                    }),
                    Obx(() {
                      return Text(
                        settingController.setting.value?.slogan ?? '',
                        style: TextStyle(
                          fontSize: 12,
                          color: gray,
                          fontWeight: FontWeight.w400,
                        ),
                        overflow: TextOverflow.ellipsis,
                      );
                    }),
                  ],
                ),
              ),
            ),
          ],
        ),
        footerItems: [
          PaneItem(
            icon: Icon(FluentIcons.lock, size: 16),
            title: Text('lock'.tr, style: TextStyle(fontSize: 14)),
            body: SizedBox(),
            onTap: () {
              settingController.updateSetting('locked', true);
              eventBus.emit(Events.NAVIGATE.name, RouterMap.LOGIN);
            },
          ),
          PaneItem(
            icon: Icon(WindowsIcons.mob_notification_bell, size: 16),
            infoBadge: InfoBadge(),
            title: Text('notices'.tr, style: TextStyle(fontSize: 14)),
            body: NavigationBodyItem(
              content: NoticePage(),
              header: 'notices'.tr,
            ),
          ),
          PaneItem(
            icon: Icon(FluentIcons.settings, size: 16),
            title: Text('settings'.tr, style: TextStyle(fontSize: 14)),
            body: NavigationBodyItem(
              content: SettingPage(),
              header: 'settings'.tr,
            ),
          ),
        ],
      ),
    );
  }
}
