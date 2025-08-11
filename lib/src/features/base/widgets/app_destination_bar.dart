import 'package:attendance_app/src/core/shared/extensions/build_context.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
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
    final colorScheme = context.appColorScheme;

    final List<NavigationDestination> destinations = [
      NavigationDestination(
        icon: Icon(
          currentIndex == 0 ? Icons.home : Icons.home_outlined,
          color: currentIndex == 0
              ? colorScheme.primary
              : colorScheme.onSurfaceVariant,
        ),
        label: 'Inicio',
      ),

      NavigationDestination(
        icon: Icon(
          currentIndex == 1
              ? Icons.calendar_today
              : Icons.calendar_today_outlined,
          color: currentIndex == 1
              ? colorScheme.primary
              : colorScheme.onSurfaceVariant,
        ),
        label: 'Historial',
      ),
      NavigationDestination(
        icon: Icon(
          currentIndex == 2
              ? Icons.person
              : Icons.person_outline,
          color: currentIndex == 2
              ? colorScheme.primary
              : colorScheme.onSurfaceVariant,
        ),
        label: 'Empleados',
      ),
    ];

    final List<NavigationDestinationLabelBehavior> labelBehaviors = [
      NavigationDestinationLabelBehavior.alwaysShow,
      NavigationDestinationLabelBehavior.alwaysShow,
      NavigationDestinationLabelBehavior.alwaysShow,
    ];

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: DoubleSizes.size8,
        vertical: DoubleSizes.size2,
      ),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(DoubleSizes.size16),
          topRight: Radius.circular(DoubleSizes.size16),
        ),
        boxShadow: [
          BoxShadow(
            color: colorScheme.shadow.withValues(alpha: 0.2),
            blurRadius: DoubleSizes.size12,
            offset: const Offset(0, DoubleSizes.size4),
          ),
        ],
      ),
      child: NavigationBar(
        backgroundColor: colorScheme.surface,
        elevation: 0,
        indicatorColor: colorScheme.primaryContainer,
        selectedIndex: currentIndex,
        onDestinationSelected: onTabSelected,
        destinations: destinations,
        labelBehavior: labelBehaviors[currentIndex],
      ),
    );
  }
}
