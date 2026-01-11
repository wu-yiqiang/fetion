import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/FluentIcon.dart';
import 'package:fluent_ui/fluent_ui.dart';

class SearchsBar extends StatefulWidget {
  const SearchsBar({super.key});
  @override
  State<SearchsBar> createState() => _SearchsBar();
}

class _SearchsBar extends State<SearchsBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 4),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 1, color: white110)),
      ),
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 10,
        children: [
          Expanded(
            child: TextBox(
              prefix: Container(
                padding: EdgeInsets.only(left: 8),
                child: FluentIcon(icon: WindowsIcons.search, onTap: () {}),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
