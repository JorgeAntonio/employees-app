import 'package:attendance_app/src/core/router/router.dart';
import 'package:attendance_app/src/core/shared/layout/double_value.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/app_destination_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({
    required this.child,
    required this.currentIndex,
    required this.onTabSelected,
    super.key,
  });

  final Widget child;
  final int currentIndex;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      extendBody: true, // to make floating action button notch transparent
      body: child,
      bottomNavigationBar: AppDestinationBar(
        currentIndex: currentIndex,
        onTabSelected: onTabSelected,
      ),
      floatingActionButton: Container(
        width: DoubleSizes.size64,
        height: DoubleSizes.size64,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: colorScheme.secondary,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              blurRadius: DoubleSizes.size8,
              offset: const Offset(0, DoubleSizes.size4),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(DoubleSizes.size32),
            onTap: () {
              // Navigate directly to scanner route
              context.pushNamed(Routes.scanner.name);
            },
            child: Icon(
              Icons.qr_code_scanner,
              color: colorScheme.onSecondary,
              size: DoubleSizes.size32,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
