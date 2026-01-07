import 'package:fetion/common/const.dart';
import 'package:fetion/common/light-theme.dart';
import 'package:fetion/navigate/router_table.dart';
import 'package:fetion/pages/desktop/contact/contact.dart';
import 'package:fetion/pages/desktop/me/controller/me_controller.dart';
import 'package:fetion/pages/desktop/me/me.dart';
import 'package:fetion/pages/desktop/messages/message_bar.dart';
import 'package:fetion/pages/desktop/setting/setting.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:fetion/widgets/FluentIcon.dart';
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
      header: PageHeader(
        title: Texts(text: header ?? 'Header', fontSize: 24, color: black90),
      ),
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
  final MeController meController = Get.put(MeController());
  int topIndex = 0;

  List<NavigationPaneItem> items = [
    PaneItemSeparator(),
    PaneItem(
      icon: FluentIcon(icon: WindowsIcons.message, size: 16, onTap: () {}),
      title: Texts(text: 'Messages', color: black90),
      infoBadge: InfoBadge(
        source: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            children: 100 < 99
                ? [Texts(text: '12', fontSize: 12, fontWeight: FontWeight.w500)]
                : [
                    Texts(
                      text: '99',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                    Texts(text: '⁺', fontSize: 14, fontWeight: FontWeight.w500),
                  ],
          ),
        ),
      ),
      body: MessageBar(),
    ),
    PaneItem(
      icon: Icon(FluentIcons.contact_info, size: 16),
      title: Texts(text:'Contacts',color: black90),
      body: ContactBar(),
    ),
    PaneItem(
      icon: const Icon(FluentIcons.contact_list, size: 16),
      title: Texts(text:'Groups',color: black90),
      body: const NavigationBodyItem(content: Text("ssss")),
    ),
    PaneItem(
      icon: const Icon(WindowsIcons.contact, size: 16),
      title: Texts(text: 'profiles'.tr, color: black90),
      body: NavigationBodyItem(content: MePage(), header: 'profiles'.tr),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      // appBar: const NavigationAppBar(
      //   leading: Icon(FluentIcons.a_t_p_logo),
      //   title: Text('NavigationView'),
      // ),
      pane: NavigationPane(
        selected: topIndex,
        onChanged: (index) => setState(() => topIndex = index),
        displayMode: PaneDisplayMode.compact,
        items: items,
        size: NavigationPaneSize(openWidth: 250),
        header: Row(
          spacing: 6,
          children: [
            Flexible(child: StatusAvatar(image: DefaultAvatar)),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(() {
                      return Texts(
                        text: meController.user.value.nickName,
                        fontSize: 14,
                        color: black90,
                        fontWeight: FontWeight.w500
                      );
                    }),
                    Obx(() {
                      return Texts(
                        text: meController.user.value.slogan ?? '',
                        fontSize: 12,
                        color: black6,
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
            title:Texts(text:'Lock',color: black90),
            body: SizedBox(),
            onTap: () {
              eventBus.emit(Events.NAVIGATE.name, RouterMap.LOGIN);
            },
          ),
          PaneItem(
            icon: Icon(FluentIcons.settings, size: 16),
            title: Texts(text:'Settings',color: black90),
            body: NavigationBodyItem(
              content: SettingPage(),
              header: 'Settings',
            ),
          ),
        ],
      ),
    );
  }
}
