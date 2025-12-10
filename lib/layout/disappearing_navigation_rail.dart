import 'package:fetion/common/const.dart';
import 'package:fetion/widgets/InkWells.dart' show InkWells;
import 'package:flutter/material.dart';
import './destinations.dart';
import './animations.dart';
import './nav_rail_transition.dart';
import 'package:fetion/widgets/StatusAvatar.dart';
// import 'animated_floating_action_button.dart';  

class DisappearingNavigationRail extends StatelessWidget {
  const DisappearingNavigationRail({
    super.key,
    required this.railAnimation, // Add this parameter
    required this.railFabAnimation,
    required this.backgroundColor,
    required this.selectedIndex,
    this.onDestinationSelected,
  });

  final RailAnimation railAnimation; // Add this variable
  final RailFabAnimation railFabAnimation;
  final Color backgroundColor;
  final int selectedIndex;
  final ValueChanged<int>? onDestinationSelected;

  @override
  Widget build(BuildContext context) {
    return NavRailTransition(
      animation: railAnimation,
      backgroundColor: backgroundColor,
      child: NavigationRail(
        selectedIndex: selectedIndex,
        backgroundColor: backgroundColor,
        onDestinationSelected: onDestinationSelected,
        indicatorColor: Colors.white,
        selectedIconTheme: IconThemeData(color: primaryColor),
        minWidth: 58,
        leading: Column(
          children: [
            StatusAvatar(image: 'assets/images/user.jpg'),
          ],
        ),
        // groupAlignment: -0.85,
        destinations: destinations.map((d) {
          return NavigationRailDestination(
            icon: Icon(d.icon, size: 22),
            label: Text(d.label),
            selectedIcon: Icon(d.selectedIcon, size: 22),
          );
        }).toList(),
        extended: false,

        trailing: const Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Flex(
                spacing: 20,
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // InkWells(child: Icon(Icons.lock_outline, size: 20), onPress: () {}),
                  Icon(Icons.lock_outline, size: 20),
                  Icon(Icons.settings_outlined, size: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
