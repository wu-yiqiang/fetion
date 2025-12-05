import 'package:flutter/material.dart';
import './destinations.dart';
import './animations.dart';
import './nav_rail_transition.dart';
import 'package:fetion/widgets/Avatar.dart';
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
        selectedIconTheme: IconThemeData(color: Colors.amber),
        minWidth: 58,
        // useIndicator: false,
        leading: Column(
          children: [
            // IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            Avatar(),
            // const SizedBox(height: 8),
            // AnimatedFloatingActionButton(
            //   animation: railFabAnimation,
            //   elevation: 0,
            //   onPressed: () {},
            //   child: const Icon(Icons.add),
            // ),
          ],
        ),
        groupAlignment: -0.85,
        destinations: destinations.map((d) {
          return NavigationRailDestination(
            icon: Icon(d.icon, size: 22),
            label: Text(d.label),
            selectedIcon: Icon(d.selectedIcon, size: 22),
          );
        }).toList(),
      ),
    );
  }
}
