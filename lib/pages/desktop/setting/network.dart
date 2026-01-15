import 'package:fetion/common/light-theme.dart';
import 'package:fetion/pages/desktop/home/controller/setting_controller.dart';
import 'package:fetion/widgets/FormItem.dart';
import 'package:fetion/widgets/Texts.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';

class NetworkPage extends StatefulWidget {
  const NetworkPage({super.key});
  @override
  State<NetworkPage> createState() => _NetworkPage();
}

class _NetworkPage extends State<NetworkPage> {
  final SettingController settingController = Get.put(SettingController());
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
                  child: Flex(
                    direction: Axis.vertical,
                    spacing: 10,
                    children: [
                      FormItem(
                        'hostName'.tr,
                        settingController.setting.value.deviceName,
                      ),
                      FormItem(
                        'gateway'.tr,
                        settingController.setting.value.gateway,
                      ),

                      FormItem('IPV4', settingController.setting.value.ipv4),
                      FormItem('IPV6', settingController.setting.value.ipv6),
                      FormItem(
                        'hardwareAddress'.tr,
                        settingController.setting.value.macAddr,
                      ),
                      // HyperlinkButton(
                      //   child: Text(
                      //     'openSource'.tr,
                      //     style: TextStyle(
                      //       fontSize: 12,
                      //       decoration: TextDecoration.none,
                      //     ),
                      //   ),
                      //   onPressed: () {},
                      // ),
                      // HyperlinkButton(
                      //   child: Text(
                      //     'feedback'.tr,
                      //     style: TextStyle(
                      //       fontSize: 12,
                      //       decoration: TextDecoration.none,
                      //     ),
                      //   ),
                      //   onPressed: () {},
                      // ),
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
