import 'package:fluent_ui/fluent_ui.dart';
import './search_bar.dart';

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
      color: theme.scaffoldBackgroundColor,
      child: Column(
        children: [
          SearchsBar()
        ],
      ),
    );
  }
}
