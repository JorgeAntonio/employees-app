import 'package:flutter/material.dart';

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
      body: SafeArea(child: child),
      bottomNavigationBar: AppDestinationBar(
        currentIndex: currentIndex,
        onTabSelected: onTabSelected,
      ),
    );
  }
}
