import 'package:flutter/material.dart';

class Destination {
  const Destination(this.icon, this.selectedIcon, this.label);
  final IconData icon;
  final IconData selectedIcon;
  final String label;
}

const List<Destination> destinations = <Destination>[
  Destination(Icons.message_outlined, Icons.message, 'Message'),
  Destination(Icons.person_outline, Icons.person, 'Contact'),
  Destination(Icons.manage_accounts_outlined, Icons.manage_accounts, 'Me'),
  Destination(Icons.settings_outlined, Icons.settings, 'Setting'),
];
