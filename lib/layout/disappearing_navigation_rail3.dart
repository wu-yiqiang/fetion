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
              FlutterLogo(),
              SizedBox(width: 6.0),
              Text('This is a custom widget'),
            ],
          ),
        );
      },
    ),
  ),
];


NavigationView(
  
)