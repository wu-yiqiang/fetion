import 'package:fluent_ui/fluent_ui.dart';
import 'package:fetion/pages/desktop/messages/search_bar.dart';

class FriendsBox extends StatefulWidget {
  const FriendsBox({super.key});
  @override
  State<FriendsBox> createState() => _FriendsBox();
}

class _FriendsBox extends State<FriendsBox> {

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context); 
    return Container(
      width: 260,
      color: theme.scaffoldBackgroundColor,
      child: Column(
        children: [
          SearchsBar()
        ],
      ),
    );
  }
}
