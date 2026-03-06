import 'package:fluent_ui/fluent_ui.dart';

class MouseMenu extends StatefulWidget {
  const MouseMenu({super.key});
  @override
  State<MouseMenu> createState() => _MouseMenu();
}

class _MouseMenu extends State<MouseMenu> {
  var _orientation = 'landscape';
  var _iconSize = 'medium_icons';
  @override
  Widget build(BuildContext context) {
    return MenuBar(
      items: [
        MenuBarItem(
          title: '',
          items: [
            MenuFlyoutItem(text: const Text('Output'), onPressed: () {}),
            const MenuFlyoutSeparator(),
            RadioMenuFlyoutItem<String>(
              text: const Text('Landscape'),
              value: 'landscape',
              groupValue: _orientation,
              onChanged: (v) => setState(() => _orientation = v),
            ),
            RadioMenuFlyoutItem<String>(
              text: const Text('Portrait'),
              value: 'portrait',
              groupValue: _orientation,
              onChanged: (v) => setState(() => _orientation = v),
            ),
            const MenuFlyoutSeparator(),
            RadioMenuFlyoutItem<String>(
              text: const Text('Small icons'),
              value: 'small_icons',
              groupValue: _iconSize,
              onChanged: (v) => setState(() => _iconSize = v),
            ),
            RadioMenuFlyoutItem<String>(
              text: const Text('Medium icons'),
              value: 'medium_icons',
              groupValue: _iconSize,
              onChanged: (v) => setState(() => _iconSize = v),
            ),
            RadioMenuFlyoutItem<String>(
              text: const Text('Large icons'),
              value: 'large_icons',
              groupValue: _iconSize,
              onChanged: (v) => setState(() => _iconSize = v),
            ),
          ],
        ),
        MenuBarItem(
          title: 'Help',
          items: [MenuFlyoutItem(text: const Text('About'), onPressed: () {})],
        ),
      ],
    );
  }
}
