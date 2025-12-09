import 'package:flutter/material.dart';
import './general.dart';
import './network.dart';
class SettingPage extends StatefulWidget {
  const SettingPage({super.key});
  @override
  State<SettingPage> createState() => _SettingPage();
}

class _SettingPage extends State<SettingPage> {
  List tabs = [
    {'label': '通用','key': 'general', 'widget': General()},
    {'label': '网络', 'key': 'network', 'widget': Network()}
  ];
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(10), child: Text("设置"));
  }
}
