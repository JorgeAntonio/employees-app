import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class AppDestinationBar extends StatelessWidget {
  const AppDestinationBar({
    required this.currentIndex,
    required this.onTabSelected,
    super.key,
  });

  final int currentIndex;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    return StylishBottomBar(
      option: AnimatedBarOptions(
        iconSize: 28,
        barAnimation: BarAnimation.fade,
        iconStyle: IconStyle.Default,
        opacity: 1.0,
      ),
      items: [
        BottomBarItem(
          icon: const Icon(Icons.home_outlined),
          selectedIcon: const Icon(Icons.home),
          selectedColor: Colors.blue,
          unSelectedColor: Colors.grey,
          title: const Text('Inicio'),
        ),
        BottomBarItem(
          icon: const Icon(Icons.calendar_today_outlined),
          selectedIcon: const Icon(Icons.calendar_today),
          selectedColor: Colors.blue,
          unSelectedColor: Colors.grey,
          title: const Text('Historial'),
        ),
      ],
      hasNotch: true,
      fabLocation: StylishBarFabLocation.center,
      currentIndex: currentIndex,
      notchStyle: NotchStyle.circle,
      onTap: (index) {
        onTabSelected(index);
      },
    );
  }
}
