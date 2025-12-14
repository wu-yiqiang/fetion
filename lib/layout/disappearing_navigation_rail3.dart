import 'package:fluent_ui/fluent_ui.dart';

List<NavigationPaneItem> items = [
  PaneItem(
    icon: const WindowsIcon(WindowsIcons.home),
    title: const Text('Home'),
    body: const Text("HOMT"),
  ),
  PaneItemSeparator(),
  PaneItem(
    icon: const WindowsIcon(WindowsIcons.accept),
    title: const Text('Track orders'),
    infoBadge: const InfoBadge(source: Text('8')),
    body: Text("sdsd萨达时萨达"),
  ),
  PaneItemWidgetAdapter(
    child: Builder(
      builder: (context) {
        if (NavigationView.of(context).displayMode == PaneDisplayMode.compact) {
          return const FlutterLogo();
        }
        return ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 200.0),
          child: const Row(
            children: [
              Text('This is a custom widget'),
            ],
          ),
        );
      },
    ),
  ),
];





// Do not define the `items` inside the `Widget Build` function
// otherwise on running `setstate`, new item can not be added.

// List<NavigationPaneItem> items = [
//   PaneItem(
//     icon: const WindowsIcon(WindowsIcons.home),
//     title: const Text('Home'),
//     body: const _NavigationBodyItem(),
//   ),
//   PaneItemSeparator(),
//   PaneItem(
//     icon: const WindowsIcon(WindowsIcons.issue_tracking),
//     title: const Text('Track orders'),
//     infoBadge: const InfoBadge(source: Text('8')),
//     body: const _NavigationBodyItem(
//       header: 'Badging',
//       content: Text(
//         'Badging is a non-intrusive and intuitive way to display '
//         'notifications or bring focus to an area within an app - '
//         'whether that be for notifications, indicating new content, '
//         'or showing an alert. An InfoBadge is a small piece of UI '
//         'that can be added into an app and customized to display a '
//         'number, icon, or a simple dot.',
//       ),
//     ),
//   ),
//   PaneItem(
//     icon: const WindowsIcon(WindowsIcons.disable_updates),
//     title: const Text('Disabled Item'),
//     body: const _NavigationBodyItem(),
//     enabled: false,
//   ),
//   PaneItemExpander(
//     icon: const WindowsIcon(WindowsIcons.account_management),
//     title: const Text('Account'),
//     body: const _NavigationBodyItem(
//       header: 'PaneItemExpander',
//       content: Text(
//         'Some apps may have a more complex hierarchical structure '
//         'that requires more than just a flat list of navigation '
//         'items. You may want to use top-level navigation items to '
//         'display categories of pages, with children items displaying '
//         'specific pages. It is also useful if you have hub-style '
//         'pages that only link to other pages. For these kinds of '
//         'cases, you should create a hierarchical NavigationView.',
//       ),
//     ),
//     items: [
//       PaneItemHeader(header: const Text('Apps')),
//       PaneItem(
//         icon: const WindowsIcon(WindowsIcons.mail),
//         title: const Text('Mail'),
//         body: const _NavigationBodyItem(),
//       ),
//       PaneItem(
//         icon: const WindowsIcon(WindowsIcons.calendar),
//         title: const Text('Calendar'),
//         body: const _NavigationBodyItem(),
//       ),
//     ],
//   ),
//   PaneItemWidgetAdapter(
//     child: Builder(builder: (context) {
//       // Build the widget depending on the current display mode.
//       //
//       // This already returns the resolved auto display mode.
//       if (NavigationView.of(context).displayMode == PaneDisplayMode.compact) {
//         return const FlutterLogo();
//       }
//       return ConstrainedBox(
//         // Constraints are required for top display mode, otherwise the Row will
//         // expand to the available space.
//         constraints: const BoxConstraints(maxWidth: 200.0),
//         child: const Row(children: [
//           FlutterLogo(),
//           SizedBox(width: 6.0),
//           Text('This is a custom widget'),
//         ]),
//       );
//     }),
//   ),
// ];

// Return the NavigationView from `Widegt Build` function

// NavigationView(
//   appBar: const NavigationAppBar(
//     title: Text('NavigationView'),
//   ),
//   pane: NavigationPane(
//     selected: topIndex,
//     onItemPressed: (index) {
//       // Do anything you want to do, such as:
//       if (index == topIndex) {
//         if (displayMode == PaneDisplayMode.open) {
//           setState(() => this.displayMode = PaneDisplayMode.compact);
//         } else if (displayMode == PaneDisplayMode.compact) {
//           setState(() => this.displayMode = PaneDisplayMode.open);
//         }
//       }
//     },
//     onChanged: (index) => setState(() => topIndex = index),
//     displayMode: displayMode,
//     items: items,
//     footerItems: [
//       PaneItem(
//         icon: const WindowsIcon(WindowsIcons.settings),
//         title: const Text('Settings'),
//         body: const _NavigationBodyItem(),
//       ),
//       PaneItemAction(
//         icon: const WindowsIcon(WindowsIcons.add),
//         title: const Text('Add New Item'),
//         onTap: () {
//           // Your Logic to Add New `NavigationPaneItem`
//           items.add(
//             PaneItem(
//               icon: const WindowsIcon(WindowsIcons.new_folder),
//               title: const Text('New Item'),
//               body: const Center(
//                 child: Text(
//                   'This is a newly added Item',
//                 ),
//               ),
//             ),
//           );
//           setState(() {});
//         },
//       ),
//     ],
//   ),
// )