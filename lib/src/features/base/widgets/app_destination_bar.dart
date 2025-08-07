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
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: colorScheme.primary,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.2),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: NavigationBar(
        backgroundColor: colorScheme.primary,
        elevation: 0,
        indicatorColor: colorScheme.secondaryContainer,
        labelTextStyle: WidgetStateProperty.all(
          TextStyle(color: colorScheme.onPrimary),
        ),
        selectedIndex: currentIndex,
        onDestinationSelected: onTabSelected,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home_outlined, color: colorScheme.onPrimary),
            selectedIcon: Icon(Icons.home, color: colorScheme.secondary),
            label: 'Inicio',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.calendar_today_outlined,
              color: colorScheme.onPrimary,
            ),
            selectedIcon: Icon(
              Icons.calendar_today,
              color: colorScheme.secondary,
            ),
            label: 'Historial',
          ),
        ],

        labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      ),
    );
  }
}
