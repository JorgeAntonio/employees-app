import 'package:attendance_app/src/core/router/router.dart';
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
    return Scaffold(
      extendBody: true, // to make floating action button notch transparent
      body: child,
      bottomNavigationBar: AppDestinationBar(
        currentIndex: currentIndex,
        onTabSelected: onTabSelected,
      ),
      floatingActionButton: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            onTap: () {
              // Navigate directly to scanner route
              context.pushNamed(Routes.scanner.name);
            },
            child: const Icon(
              Icons.qr_code_scanner,
              color: Colors.red,
              size: 28,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
