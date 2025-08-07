import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:flutter/material.dart';

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
    final List<NavigationDestination> destinations = [
      NavigationDestination(
        icon: Icon(
          currentIndex == 0 ? Icons.home : Icons.home_outlined,
          color: currentIndex == 0
              ? context.theme.colorScheme.primary
              : context.theme.colorScheme.onSurface,
        ),
        label: 'Inicio',
      ),
      NavigationDestination(
        icon: Icon(
          currentIndex == 1
              ? Icons.qr_code_scanner
              : Icons.qr_code_scanner_outlined,
          color: currentIndex == 1
              ? context.theme.colorScheme.primary
              : context.theme.colorScheme.onSurface,
        ),
        label: 'Escanear',
      ),
      NavigationDestination(
        icon: Icon(
          currentIndex == 2
              ? Icons.calendar_today
              : Icons.calendar_today_outlined,
          color: currentIndex == 2
              ? context.theme.colorScheme.primary
              : context.theme.colorScheme.onSurface,
        ),
        label: 'Historial',
      ),
    ];

    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: (index) {
        onTabSelected(index);
      },
      destinations: destinations,
    );
  }
}
