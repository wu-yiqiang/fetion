import 'package:fetion/common/light-theme.dart';
import 'package:fetion/navigate/router_table.dart';
import 'package:fetion/pages/desktop/me/me.dart';
import 'package:fetion/pages/desktop/messages/message_bar.dart';
import 'package:fetion/pages/desktop/messages/messages.dart';
import 'package:fetion/pages/desktop/setting/setting.dart';
import 'package:fetion/utils/EventBus.dart';
import 'package:fetion/widgets/StatusAvatar.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';

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
  int topIndex = 0;

  List<NavigationPaneItem> items = [
    PaneItem(
      icon: WindowsIcon(WindowsIcons.message, size: 16),
      title: const Text('Chats'),
      infoBadge: InfoBadge(
        source: Padding(
          padding: EdgeInsets.all(2),
          child: Texts(text: '99+', fontSize: 12),
        ),
      ),
      body: MessageBar(),
    ),
    PaneItemSeparator(),
    PaneItem(
      icon: Icon(FluentIcons.contact_info, size: 16),
      title: const Text('Contacts'),
      body: const NavigationBodyItem(content: Text("ssss")),
    ),
    PaneItem(
      icon: const Icon(FluentIcons.contact_list, size: 16),
      title: const Text('Groups'),
      body: const NavigationBodyItem(content: Text("ssss")),
    ),
    PaneItem(
      icon: const Icon(WindowsIcons.contact, size: 16),
      title: const Text('User'),
      body: NavigationBodyItem(content: MePage(), header: 'User'),
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
        size: NavigationPaneSize(openWidth: 240),
        header: Row(
          children: [
            StatusAvatar(image: 'assets/images/user.jpg'),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Texts(text: "Sutter Jhon", fontSize: 14, color: black90),
                    Texts(text: "这个人很懒，什么也没有留下", fontSize: 12, color: black6),
                  ],
                ),
              ),
            ),
          ],
        ),
        // customPane: const NavigationPaneWidget()),
        footerItems: [
          PaneItem(
            icon: const Icon(FluentIcons.lock),
            title: const Text('Lock'),
            body: const NavigationBodyItem(content: Text("ssss")),
            onTap: () {
              eventBus.emit(Events.NAVIGATE.name, routerMap['LOGIN']);
            },
          ),
          PaneItem(
            icon: const Icon(FluentIcons.settings),
            title: const Text('Settings'),
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
