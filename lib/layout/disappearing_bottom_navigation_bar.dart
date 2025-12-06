import 'package:fetion/common/const.dart';
import 'package:flutter/material.dart';
import './destinations.dart';
import './animations.dart'; // Add this import
import './bottom_bar_transition.dart'; // Add this import


class DisappearingBottomNavigationBar extends StatelessWidget {
  const DisappearingBottomNavigationBar({
    super.key,
    required this.barAnimation, // Add this parameter
    required this.selectedIndex,
    this.onDestinationSelected,
  });
  final BarAnimation barAnimation; // Add this variable
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
     return BottomBarTransition(
      animation: barAnimation,
      backgroundColor: Colors.white,
      child: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.black87,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        enableFeedback: false,
        currentIndex: selectedIndex,
        onTap: onDestinationSelected,
        items: destinations.map<BottomNavigationBarItem>((d) {
          return BottomNavigationBarItem(
            icon: Icon(d.icon),
            activeIcon: Icon(d.selectedIcon),
            label: d.label,
          );
        }).toList(),
      ),
    );
  }
}
