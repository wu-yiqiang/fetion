import 'package:fetion/pages/desktop/contact/friend.dart' show Friend;
import 'package:fetion/widgets/ScrollViews.dart';
import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});
  @override
  State<Friends> createState() => _Friends();
}

class _Friends extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    final contacts = [
      {'name': 'Sutter'},
      {'name': 'Jack'},
      {'name': 'Joy'},
      {'name': 'Victor'},
      {'name': 'Mick'},
      {'name': 'Jhon'},
      {'name': 'Joe'},
      {'name': 'Pick'},
      {'name': 'Ada'},
      {'name': 'Atlas'},
      {'name': 'Alice'},
      {'name': 'Lodash'},
      {'name': 'Rolldown'},
      {'name': 'Rollup'},
    ];
    return ScrollViews(
      child: SingleChildScrollView(
        child: Column(
          children: contacts.map((item) {
            return Friend(item['name']!);
          }).toList(),
        ),
      ),
    );
  }
}
