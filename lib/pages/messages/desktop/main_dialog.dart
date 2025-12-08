import 'package:fetion/common/const.dart';
import 'package:flutter/material.dart';

class MainDialog extends StatefulWidget {
  const MainDialog({super.key});
  @override
  State<MainDialog> createState() => _MainDialog();
}

class _MainDialog extends State<MainDialog> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.amber,
      child: Text("sdsd"),
    );
  }
}
