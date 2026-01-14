import 'package:fetion/common/light-theme.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

class NetworkPage extends StatefulWidget {
  const NetworkPage({super.key});
  @override
  State<NetworkPage> createState() => _NetworkPage();
}

class _NetworkPage extends State<NetworkPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 6,
        children: [
          Container(
            child: Text('network'.tr),
          ),
          Column(
            spacing: 6,
            children: [
              Expander(
                header: Row(
                  spacing: 6,
                  children: [
                    WindowsIcon(WindowsIcons.my_network, size: 16),
                    Texts(text: 'connection'.tr, fontSize: 13),
                  ],
                ),
                content: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      HyperlinkButton(
                        child: Text(
                          'openSource'.tr,
                          style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      HyperlinkButton(
                        child: Text(
                          'feedback'.tr,
                          style: TextStyle(
                            fontSize: 12,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
