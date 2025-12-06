import 'package:flutter/material.dart';
import '../../layout/destinations.dart';
import '../../layout/disappearing_bottom_navigation_bar.dart';
import '../../layout/disappearing_navigation_rail.dart';
import '../../layout/animations.dart'; // Add this import
// import './../layout/animated_floating_action_button.dart'; // Add this import

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> with SingleTickerProviderStateMixin {
  // late final _colorScheme = Theme.of(context).colorScheme;
  // late final _backgroundColor = Color.alphaBlend(
  //   _colorScheme.primary.withAlpha(36),
  //   _colorScheme.surface,
  // );
  late final _controller = AnimationController(
    duration: const Duration(milliseconds: 1000),
    reverseDuration: const Duration(milliseconds: 1250),
    value: 0,
    vsync: this,
  );
  late final _railAnimation = RailAnimation(parent: _controller);
  late final _railFabAnimation = RailFabAnimation(parent: _controller);
  late final _barAnimation = BarAnimation(parent: _controller);
  int selectedIndex = 0; // Add this variable
  bool controllerInitialized = false; // Add this variable

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final double width = MediaQuery.of(context).size.width;
    // Remove wideScreen reference
    // Add from here ...
    final AnimationStatus status = _controller.status;
    if (width > 600) {
      if (status != AnimationStatus.forward &&
          status != AnimationStatus.completed) {
        _controller.forward();
      }
    } else {
      if (status != AnimationStatus.reverse &&
          status != AnimationStatus.dismissed) {
        _controller.reverse();
      }
    }
    if (!controllerInitialized) {
      controllerInitialized = true;
      _controller.value = width > 600 ? 1 : 0;
    }

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return Scaffold(
          body: Row(
            children: [
              DisappearingNavigationRail(
                railAnimation: _railAnimation,
                railFabAnimation: _railFabAnimation,
                selectedIndex: selectedIndex,
                backgroundColor: Colors.white60,
                onDestinationSelected: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              Expanded(
                child: Container(
                  // color: _backgroundColor,
                  child: Text("sdsd"),
                  // child: EmailListView(
                  //   selectedIndex: selectedIndex,
                  //   onSelected: (index) {
                  //     setState(() {
                  //       selectedIndex = index;
                  //     });
                  //   },
                  //   // currentUser: widget.currentUser,
                  // ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: DisappearingBottomNavigationBar(
            barAnimation: _barAnimation,
            selectedIndex: selectedIndex,
            onDestinationSelected: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        );
      },
    );
  }
}
