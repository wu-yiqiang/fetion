import 'package:flutter/material.dart';

class Network extends StatefulWidget {
  const Network({super.key});
  @override
  State<Network> createState() => _Network();
}

class _Network extends State<Network> {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(10), child: Text("Network"));
  }
}
