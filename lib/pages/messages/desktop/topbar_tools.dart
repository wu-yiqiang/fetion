import 'package:fetion/widgets/InkWells.dart' show InkWells;
import 'package:fetion/widgets/SvgIcon.dart';
import 'package:flutter/material.dart';

class TopbarTools extends StatefulWidget {
  const TopbarTools({super.key});
  @override
  State<TopbarTools> createState() => _TopbarTools();
}

class _TopbarTools extends State<TopbarTools> {
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        SvgIcon(name: 'search', onTap: () {}),
        SvgIcon(name: 'more', onTap: () {})
      ],
    );
  }
}
