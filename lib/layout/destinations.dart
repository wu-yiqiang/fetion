import 'package:flutter/material.dart';

class Destination {
  const Destination(this.icon, this.selectedIcon, this.label);
  final IconData icon;
  final IconData selectedIcon;
  final String label;
}

const List<Destination> destinations = <Destination>[
  Destination(Icons.message_outlined, Icons.message, 'Message'),
  Destination(Icons.group_outlined, Icons.group, 'Contact'),
  Destination(Icons.assignment_ind_outlined, Icons.assignment_ind, 'Me'),
  Destination(Icons.settings_outlined, Icons.settings, 'Setting'),
];
