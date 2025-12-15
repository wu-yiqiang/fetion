import 'package:fetion/pages/setting/about.dart';
import 'package:fetion/pages/setting/appearance.dart';
import 'package:fetion/pages/setting/network.dart';
import 'package:fetion/widgets/ScrollViews.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});
  @override
  State<SettingPage> createState() => _SettingPage();
}

class _SettingPage extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ScrollViews(
      child: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [AppearancePage(), NetworkPage(), AboutPage()],
        ),
      ),
    );
  }
}
