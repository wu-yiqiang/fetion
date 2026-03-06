import 'package:fluent_ui/fluent_ui.dart';
import 'package:fetion/pages/desktop/messages/search_bar.dart';

class OperationBar extends StatefulWidget {
  const OperationBar({super.key});
  @override
  State<OperationBar> createState() => _OperationBar();
}

class _OperationBar extends State<OperationBar> {

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
