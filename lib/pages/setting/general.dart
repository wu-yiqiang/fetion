import 'package:flutter/material.dart';

class General extends StatefulWidget {
  const General({super.key});
  @override
  State<General> createState() => _General();
}

class _General extends State<General> {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(10), child: Text("General"));
  }
}
